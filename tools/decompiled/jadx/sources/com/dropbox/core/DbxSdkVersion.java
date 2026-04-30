package com.dropbox.core;

import com.dropbox.core.util.IOUtil;
import com.dropbox.core.util.StringUtil;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class DbxSdkVersion {
    private static final String ResourceName = "/sdk-version.txt";
    public static final String Version = loadVersion();

    final class LoadException extends Exception {
        private static final long serialVersionUID = 0;

        public LoadException(String str) {
            super(str);
        }
    }

    private static String loadLineFromResource() throws LoadException {
        try {
            InputStream resourceAsStream = DbxSdkVersion.class.getResourceAsStream(ResourceName);
            if (resourceAsStream == null) {
                throw new LoadException("Not found.");
            }
            try {
                BufferedReader bufferedReader = new BufferedReader(IOUtil.utf8Reader(resourceAsStream));
                String line = bufferedReader.readLine();
                if (line == null) {
                    throw new LoadException("No lines.");
                }
                String line2 = bufferedReader.readLine();
                if (line2 != null) {
                    throw new LoadException("Found more than one line.  Second line: " + StringUtil.jq(line2));
                }
                return line;
            } finally {
                IOUtil.closeInput(resourceAsStream);
            }
        } catch (IOException e2) {
            throw new LoadException(e2.getMessage());
        }
    }

    private static String loadVersion() {
        try {
            String strLoadLineFromResource = loadLineFromResource();
            if (!Pattern.compile("[0-9]+(?:\\.[0-9]+)*(?:-[-_A-Za-z0-9]+)?").matcher(strLoadLineFromResource).matches()) {
                throw new LoadException("Text doesn't follow expected pattern: " + StringUtil.jq(strLoadLineFromResource));
            }
            return strLoadLineFromResource;
        } catch (LoadException e2) {
            throw new RuntimeException("Error loading version from resource \"sdk-version.txt\": " + e2.getMessage());
        }
    }
}
