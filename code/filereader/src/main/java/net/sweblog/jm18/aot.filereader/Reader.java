package net.sweblog.jm18.aot.filereader;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

public class Reader {
    public static void main(String[] args) {

        if (args.length != 1) {
            System.err.println("Filename missing.");
            System.exit(1);
        }

        Reader fileReader = new Reader();

        try {
            fileReader.readFile(new File(args[0]));
        } catch (IOException ioe) {
            String message = ioe.getMessage();
            if (message != null) {
                System.err.println(message);
            }
            System.err.println("Error while processing " + args[0]);
        }
    }

    private void readFile(File file) throws IOException {
        try (FileReader fileReader = new FileReader(file);
             BufferedReader bufferedReader = new BufferedReader(fileReader)) {
            String line;

            while ((line = bufferedReader.readLine()) != null) {
                System.out.println(line);
            }
        }
    }
}
