import java.io.*;
import java.nio.file.Files;

public class Main {
    public static void main(String[] args) {

        //Only Files of type .txt or .tmp are allowed
        String fileName = initialArgCheck(args);
        File file = new File(fileName);
        String path = file.getParent();
        boolean isWindows = System.getProperty("os.name").toLowerCase().startsWith("windows");

        try {
            //convert input file (= temp file, will be deleted afterwards)
            System.out.println("Start converting the input file...");
            File temp = convertInput(file,path);

            //run solver with converted input file (run command)
            System.out.println("Start solver...");
            runSolver(isWindows,temp);
        }catch (Exception e){
            System.err.println(e.getMessage());
            e.getStackTrace();
        }
    }

    private static String initialArgCheck(String[] args){
        String fileName = "";
        if(args == null || args.length == 0){
            System.err.println("Please provide an input file for the solver.");
        }else{
            fileName = args[0];
            String fileExtension = (fileName.contains(".")) ? fileExtension = fileName.substring(fileName.indexOf(".")+1) : "";
            if((!fileExtension.equals("txt") && !fileExtension.equals("tmp")) || (fileExtension.equals("txt") && fileExtension.equals("tmp"))){
                System.err.println("Input file has to be of type .txt or .tmp");
            }
        }
        return fileName;
    }
    private static void convertFirstLine(String currLine, BufferedWriter w) throws IOException {
        String[] firstLine = currLine.split(" ");
        int numRow = Integer.parseInt(firstLine[0]);
        int numCol = Integer.parseInt(firstLine[1]);
        w.write("cell(1.."+numRow + ",1.."+numCol+").");
        w.newLine();
    }
    private static void convertLastLine(String currLine, BufferedWriter w) throws IOException {
        String[] lastLine = currLine.split(" ");
        //get column hints
        int count = 1;
        for (String n:lastLine) {
            w.write("column_hint("+count+","+n+").");
            w.newLine();
            count++;
        }
    }
    private static void convertOtherLines(String currLine, BufferedWriter w, int i) throws IOException {
        String[] l = currLine.split(" ");
        //get Tree hints
        char[] trees = l[0].toCharArray();
        for(int j = 0;j< trees.length;j++){
            if(trees[j]=='T'){
                w.write("tree("+i+","+(j+1)+").");
                w.newLine();
            }
        }
        //get row hints
        w.write("row_hint("+i+","+l[1]+").");
        w.newLine();
    }
    private static File convertInput(File file,String path) throws IOException {
        BufferedReader reader = new BufferedReader(new FileReader(file));
        File temp = File.createTempFile("temp", ".lp", new File(path));
        //File temp = new File(path+"\\temp.lp");
        BufferedWriter w = new BufferedWriter(new FileWriter(temp));

        int lines = (int) Files.lines(file.toPath()).count();
        for(int i = 0;i<lines;i++){
            String currLine = reader.readLine();

            //special case: first line
            if(i==0){
                convertFirstLine(currLine,w);
            }
            //special case: last line
            else if(i==lines-1){
                convertLastLine(currLine,w);
            }else{
                convertOtherLines(currLine,w,i);
            }
        }
        w.close();
        /*BufferedReader r = new BufferedReader(new FileReader(temp));
        String li = "";
        while((li =r.readLine()) != null){
            System.out.println(li);
        }*/
        System.out.println("Temp file for solver has been created at: "+path);
        temp.deleteOnExit();
        return temp;
    }
    private static void runSolver(boolean isWindows,File temp) throws IOException {
        if(isWindows){
            ProcessBuilder builder = new ProcessBuilder("clingo", "tents.lp", temp.getAbsolutePath());
            //ProcessBuilder builder = new ProcessBuilder("clingo", "--version");
            builder.directory(new File(System.getProperty("user.dir")+"\\solver"));
            builder.redirectErrorStream(true);
            Process p = builder.start();
            BufferedReader re = new BufferedReader(new InputStreamReader(p.getInputStream()));
            String line;
            while (true) {
                line = re.readLine();
                if (line == null) { break; }
                System.out.println(line);
            }
        }else{
            ProcessBuilder builder = new ProcessBuilder("clingo", "tents.lp", temp.getAbsolutePath());
            //ProcessBuilder builder = new ProcessBuilder("clingo", "--version");
            builder.directory(new File(System.getProperty("user.dir")+"/solver"));
            builder.redirectErrorStream(true);
            Process p = builder.start();
            BufferedReader re = new BufferedReader(new InputStreamReader(p.getInputStream()));
            String line;
            while (true) {
                line = re.readLine();
                if (line == null) { break; }
                System.out.println(line);
            }
        }
    }
}