package org.apache.commons.io;

import android.support.v7.widget.ActivityChooserView;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Locale;
import java.util.StringTokenizer;

/* JADX INFO: loaded from: classes.dex */
public class FileSystemUtils {
    private static final String DF;
    private static final int INIT_PROBLEM = -1;
    private static final FileSystemUtils INSTANCE = new FileSystemUtils();
    private static final int OS;
    private static final int OTHER = 0;
    private static final int POSIX_UNIX = 3;
    private static final int UNIX = 2;
    private static final int WINDOWS = 1;

    static {
        String property;
        int i = 3;
        String str = "df";
        try {
            property = System.getProperty("os.name");
        } catch (Exception e2) {
            i = -1;
        }
        if (property == null) {
            throw new IOException("os.name not found");
        }
        String lowerCase = property.toLowerCase(Locale.ENGLISH);
        if (lowerCase.indexOf("windows") != -1) {
            i = 1;
        } else if (lowerCase.indexOf("linux") != -1 || lowerCase.indexOf("mpe/ix") != -1 || lowerCase.indexOf("freebsd") != -1 || lowerCase.indexOf("irix") != -1 || lowerCase.indexOf("digital unix") != -1 || lowerCase.indexOf("unix") != -1 || lowerCase.indexOf("mac os x") != -1) {
            i = 2;
        } else if (lowerCase.indexOf("sun os") != -1 || lowerCase.indexOf("sunos") != -1 || lowerCase.indexOf("solaris") != -1) {
            str = "/usr/xpg4/bin/df";
        } else if (lowerCase.indexOf("hp-ux") == -1 && lowerCase.indexOf("aix") == -1) {
            i = 0;
        }
        OS = i;
        DF = str;
    }

    @Deprecated
    public static long freeSpace(String str) throws IOException {
        return INSTANCE.freeSpaceOS(str, OS, false, -1L);
    }

    public static long freeSpaceKb(String str) throws IOException {
        return freeSpaceKb(str, -1L);
    }

    public static long freeSpaceKb(String str, long j) throws IOException {
        return INSTANCE.freeSpaceOS(str, OS, true, j);
    }

    public static long freeSpaceKb() throws IOException {
        return freeSpaceKb(-1L);
    }

    public static long freeSpaceKb(long j) throws IOException {
        return freeSpaceKb(new File(".").getAbsolutePath(), j);
    }

    long freeSpaceOS(String str, int i, boolean z, long j) throws IOException {
        if (str == null) {
            throw new IllegalArgumentException("Path must not be empty");
        }
        switch (i) {
            case 0:
                throw new IllegalStateException("Unsupported operating system");
            case 1:
                return z ? freeSpaceWindows(str, j) / 1024 : freeSpaceWindows(str, j);
            case 2:
                return freeSpaceUnix(str, z, false, j);
            case 3:
                return freeSpaceUnix(str, z, true, j);
            default:
                throw new IllegalStateException("Exception caught when determining operating system");
        }
    }

    long freeSpaceWindows(String str, long j) throws Throwable {
        String strNormalize = FilenameUtils.normalize(str, false);
        String str2 = (strNormalize.length() <= 0 || strNormalize.charAt(0) == '\"') ? strNormalize : "\"" + strNormalize + "\"";
        List<String> listPerformCommand = performCommand(new String[]{"cmd.exe", "/C", "dir /a /-c " + str2}, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, j);
        for (int size = listPerformCommand.size() - 1; size >= 0; size--) {
            String str3 = listPerformCommand.get(size);
            if (str3.length() > 0) {
                return parseDir(str3, str2);
            }
        }
        throw new IOException("Command line 'dir /-c' did not return any info for path '" + str2 + "'");
    }

    long parseDir(String str, String str2) throws IOException {
        int i;
        int i2;
        int i3;
        int i4 = 0;
        int length = str.length() - 1;
        while (true) {
            if (length < 0) {
                i = length;
                i2 = 0;
                break;
            }
            if (Character.isDigit(str.charAt(length))) {
                i2 = length + 1;
                i = length;
                break;
            }
            length--;
        }
        while (true) {
            if (i < 0) {
                i3 = 0;
                break;
            }
            char cCharAt = str.charAt(i);
            if (!Character.isDigit(cCharAt) && cCharAt != ',' && cCharAt != '.') {
                i3 = i + 1;
                break;
            }
            i--;
        }
        if (i < 0) {
            throw new IOException("Command line 'dir /-c' did not return valid info for path '" + str2 + "'");
        }
        StringBuilder sb = new StringBuilder(str.substring(i3, i2));
        while (i4 < sb.length()) {
            if (sb.charAt(i4) == ',' || sb.charAt(i4) == '.') {
                sb.deleteCharAt(i4);
                i4--;
            }
            i4++;
        }
        return parseBytes(sb.toString(), str2);
    }

    long freeSpaceUnix(String str, boolean z, boolean z2, long j) throws Throwable {
        StringTokenizer stringTokenizer;
        if (str.length() == 0) {
            throw new IllegalArgumentException("Path must not be empty");
        }
        String str2 = z ? "-k" : "-";
        if (z2) {
            str2 = str2 + "P";
        }
        List<String> listPerformCommand = performCommand(str2.length() > 1 ? new String[]{DF, str2, str} : new String[]{DF, str}, 3, j);
        if (listPerformCommand.size() < 2) {
            throw new IOException("Command line '" + DF + "' did not return info as expected for path '" + str + "'- response was " + listPerformCommand);
        }
        StringTokenizer stringTokenizer2 = new StringTokenizer(listPerformCommand.get(1), " ");
        if (stringTokenizer2.countTokens() < 4) {
            if (stringTokenizer2.countTokens() == 1 && listPerformCommand.size() >= 3) {
                stringTokenizer = new StringTokenizer(listPerformCommand.get(2), " ");
            } else {
                throw new IOException("Command line '" + DF + "' did not return data as expected for path '" + str + "'- check path is valid");
            }
        } else {
            stringTokenizer2.nextToken();
            stringTokenizer = stringTokenizer2;
        }
        stringTokenizer.nextToken();
        stringTokenizer.nextToken();
        return parseBytes(stringTokenizer.nextToken(), str);
    }

    long parseBytes(String str, String str2) throws IOException {
        try {
            long j = Long.parseLong(str);
            if (j < 0) {
                throw new IOException("Command line '" + DF + "' did not find free space in response for path '" + str2 + "'- check path is valid");
            }
            return j;
        } catch (NumberFormatException e2) {
            throw new IOExceptionWithCause("Command line '" + DF + "' did not return numeric data as expected for path '" + str2 + "'- check path is valid", e2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00be  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    java.util.List<java.lang.String> performCommand(java.lang.String[] r10, int r11, long r12) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 311
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.io.FileSystemUtils.performCommand(java.lang.String[], int, long):java.util.List");
    }

    Process openProcess(String[] strArr) throws IOException {
        return Runtime.getRuntime().exec(strArr);
    }
}
