package javax.activation;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CommandMap {
    static Class class$javax$activation$CommandMap;
    private static CommandMap defaultCommandMap = null;

    public abstract DataContentHandler createDataContentHandler(String str);

    public abstract CommandInfo[] getAllCommands(String str);

    public abstract CommandInfo getCommand(String str, String str2);

    public abstract CommandInfo[] getPreferredCommands(String str);

    public static CommandMap getDefaultCommandMap() {
        if (defaultCommandMap == null) {
            defaultCommandMap = new MailcapCommandMap();
        }
        return defaultCommandMap;
    }

    public static void setDefaultCommandMap(CommandMap commandMap) throws Throwable {
        Class clsClass$;
        SecurityManager securityManager = System.getSecurityManager();
        if (securityManager != null) {
            try {
                securityManager.checkSetFactory();
            } catch (SecurityException e2) {
                if (class$javax$activation$CommandMap == null) {
                    clsClass$ = class$("javax.activation.CommandMap");
                    class$javax$activation$CommandMap = clsClass$;
                } else {
                    clsClass$ = class$javax$activation$CommandMap;
                }
                if (clsClass$.getClassLoader() != commandMap.getClass().getClassLoader()) {
                    throw e2;
                }
            }
        }
        defaultCommandMap = commandMap;
    }

    static Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    public CommandInfo[] getPreferredCommands(String str, DataSource dataSource) {
        return getPreferredCommands(str);
    }

    public CommandInfo[] getAllCommands(String str, DataSource dataSource) {
        return getAllCommands(str);
    }

    public CommandInfo getCommand(String str, String str2, DataSource dataSource) {
        return getCommand(str, str2);
    }

    public DataContentHandler createDataContentHandler(String str, DataSource dataSource) {
        return createDataContentHandler(str);
    }

    public String[] getMimeTypes() {
        return null;
    }
}
