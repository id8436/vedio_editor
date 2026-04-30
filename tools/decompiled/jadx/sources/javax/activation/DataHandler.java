package javax.activation;

import java.awt.datatransfer.DataFlavor;
import java.awt.datatransfer.Transferable;
import java.awt.datatransfer.UnsupportedFlavorException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PipedInputStream;
import java.io.PipedOutputStream;
import java.net.URL;

/* JADX INFO: loaded from: classes3.dex */
public class DataHandler implements Transferable {
    static Class class$javax$activation$DataHandler;
    private static final DataFlavor[] emptyFlavors = new DataFlavor[0];
    private static DataContentHandlerFactory factory = null;
    private CommandMap currentCommandMap;
    private DataContentHandler dataContentHandler;
    private DataSource dataSource;
    private DataContentHandler factoryDCH;
    private DataSource objDataSource;
    private Object object;
    private String objectMimeType;
    private DataContentHandlerFactory oldFactory;
    private String shortType;
    private DataFlavor[] transferFlavors;

    public DataHandler(DataSource dataSource) {
        this.dataSource = null;
        this.objDataSource = null;
        this.object = null;
        this.objectMimeType = null;
        this.currentCommandMap = null;
        this.transferFlavors = emptyFlavors;
        this.dataContentHandler = null;
        this.factoryDCH = null;
        this.oldFactory = null;
        this.shortType = null;
        this.dataSource = dataSource;
        this.oldFactory = factory;
    }

    public DataHandler(Object obj, String str) {
        this.dataSource = null;
        this.objDataSource = null;
        this.object = null;
        this.objectMimeType = null;
        this.currentCommandMap = null;
        this.transferFlavors = emptyFlavors;
        this.dataContentHandler = null;
        this.factoryDCH = null;
        this.oldFactory = null;
        this.shortType = null;
        this.object = obj;
        this.objectMimeType = str;
        this.oldFactory = factory;
    }

    public DataHandler(URL url) {
        this.dataSource = null;
        this.objDataSource = null;
        this.object = null;
        this.objectMimeType = null;
        this.currentCommandMap = null;
        this.transferFlavors = emptyFlavors;
        this.dataContentHandler = null;
        this.factoryDCH = null;
        this.oldFactory = null;
        this.shortType = null;
        this.dataSource = new URLDataSource(url);
        this.oldFactory = factory;
    }

    private synchronized CommandMap getCommandMap() {
        return this.currentCommandMap != null ? this.currentCommandMap : CommandMap.getDefaultCommandMap();
    }

    public DataSource getDataSource() {
        if (this.dataSource != null) {
            return this.dataSource;
        }
        if (this.objDataSource == null) {
            this.objDataSource = new DataHandlerDataSource(this);
        }
        return this.objDataSource;
    }

    public String getName() {
        if (this.dataSource != null) {
            return this.dataSource.getName();
        }
        return null;
    }

    public String getContentType() {
        return this.dataSource != null ? this.dataSource.getContentType() : this.objectMimeType;
    }

    public InputStream getInputStream() throws IOException {
        if (this.dataSource != null) {
            return this.dataSource.getInputStream();
        }
        DataContentHandler dataContentHandler = getDataContentHandler();
        if (dataContentHandler == null) {
            throw new UnsupportedDataTypeException(new StringBuffer().append("no DCH for MIME type ").append(getBaseType()).toString());
        }
        if ((dataContentHandler instanceof ObjectDataContentHandler) && ((ObjectDataContentHandler) dataContentHandler).getDCH() == null) {
            throw new UnsupportedDataTypeException(new StringBuffer().append("no object DCH for MIME type ").append(getBaseType()).toString());
        }
        PipedOutputStream pipedOutputStream = new PipedOutputStream();
        PipedInputStream pipedInputStream = new PipedInputStream(pipedOutputStream);
        new Thread(new Runnable(this, dataContentHandler, pipedOutputStream) { // from class: javax.activation.DataHandler.1
            private final DataHandler this$0;
            private final DataContentHandler val$fdch;
            private final PipedOutputStream val$pos;

            {
                this.this$0 = this;
                this.val$fdch = dataContentHandler;
                this.val$pos = pipedOutputStream;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    this.val$fdch.writeTo(this.this$0.object, this.this$0.objectMimeType, this.val$pos);
                    try {
                        this.val$pos.close();
                    } catch (IOException e2) {
                    }
                } catch (IOException e3) {
                    try {
                        this.val$pos.close();
                    } catch (IOException e4) {
                    }
                } catch (Throwable th) {
                    try {
                        this.val$pos.close();
                    } catch (IOException e5) {
                    }
                    throw th;
                }
            }
        }, "DataHandler.getInputStream").start();
        return pipedInputStream;
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        if (this.dataSource != null) {
            byte[] bArr = new byte[8192];
            InputStream inputStream = this.dataSource.getInputStream();
            while (true) {
                try {
                    int i = inputStream.read(bArr);
                    if (i > 0) {
                        outputStream.write(bArr, 0, i);
                    } else {
                        return;
                    }
                } finally {
                    inputStream.close();
                }
            }
        } else {
            getDataContentHandler().writeTo(this.object, this.objectMimeType, outputStream);
        }
    }

    public OutputStream getOutputStream() throws IOException {
        if (this.dataSource != null) {
            return this.dataSource.getOutputStream();
        }
        return null;
    }

    public synchronized DataFlavor[] getTransferDataFlavors() {
        if (factory != this.oldFactory) {
            this.transferFlavors = emptyFlavors;
        }
        if (this.transferFlavors == emptyFlavors) {
            this.transferFlavors = getDataContentHandler().getTransferDataFlavors();
        }
        return this.transferFlavors;
    }

    public boolean isDataFlavorSupported(DataFlavor dataFlavor) {
        for (DataFlavor dataFlavor2 : getTransferDataFlavors()) {
            if (dataFlavor2.equals(dataFlavor)) {
                return true;
            }
        }
        return false;
    }

    public Object getTransferData(DataFlavor dataFlavor) throws UnsupportedFlavorException, IOException {
        return getDataContentHandler().getTransferData(dataFlavor, this.dataSource);
    }

    public synchronized void setCommandMap(CommandMap commandMap) {
        if (commandMap != this.currentCommandMap || commandMap == null) {
            this.transferFlavors = emptyFlavors;
            this.dataContentHandler = null;
            this.currentCommandMap = commandMap;
        }
    }

    public CommandInfo[] getPreferredCommands() {
        return this.dataSource != null ? getCommandMap().getPreferredCommands(getBaseType(), this.dataSource) : getCommandMap().getPreferredCommands(getBaseType());
    }

    public CommandInfo[] getAllCommands() {
        return this.dataSource != null ? getCommandMap().getAllCommands(getBaseType(), this.dataSource) : getCommandMap().getAllCommands(getBaseType());
    }

    public CommandInfo getCommand(String str) {
        return this.dataSource != null ? getCommandMap().getCommand(getBaseType(), str, this.dataSource) : getCommandMap().getCommand(getBaseType(), str);
    }

    public Object getContent() throws IOException {
        return this.object != null ? this.object : getDataContentHandler().getContent(getDataSource());
    }

    public Object getBean(CommandInfo commandInfo) {
        try {
            ClassLoader contextClassLoader = SecuritySupport.getContextClassLoader();
            if (contextClassLoader == null) {
                contextClassLoader = getClass().getClassLoader();
            }
            return commandInfo.getCommandObject(this, contextClassLoader);
        } catch (IOException e2) {
            return null;
        } catch (ClassNotFoundException e3) {
            return null;
        }
    }

    private synchronized DataContentHandler getDataContentHandler() {
        DataContentHandler dataContentHandler;
        if (factory != this.oldFactory) {
            this.oldFactory = factory;
            this.factoryDCH = null;
            this.dataContentHandler = null;
            this.transferFlavors = emptyFlavors;
        }
        if (this.dataContentHandler != null) {
            dataContentHandler = this.dataContentHandler;
        } else {
            String baseType = getBaseType();
            if (this.factoryDCH == null && factory != null) {
                this.factoryDCH = factory.createDataContentHandler(baseType);
            }
            if (this.factoryDCH != null) {
                this.dataContentHandler = this.factoryDCH;
            }
            if (this.dataContentHandler == null) {
                if (this.dataSource != null) {
                    this.dataContentHandler = getCommandMap().createDataContentHandler(baseType, this.dataSource);
                } else {
                    this.dataContentHandler = getCommandMap().createDataContentHandler(baseType);
                }
            }
            if (this.dataSource != null) {
                this.dataContentHandler = new DataSourceDataContentHandler(this.dataContentHandler, this.dataSource);
            } else {
                this.dataContentHandler = new ObjectDataContentHandler(this.dataContentHandler, this.object, this.objectMimeType);
            }
            dataContentHandler = this.dataContentHandler;
        }
        return dataContentHandler;
    }

    private synchronized String getBaseType() {
        if (this.shortType == null) {
            String contentType = getContentType();
            try {
                this.shortType = new MimeType(contentType).getBaseType();
            } catch (MimeTypeParseException e2) {
                this.shortType = contentType;
            }
        }
        return this.shortType;
    }

    public static synchronized void setDataContentHandlerFactory(DataContentHandlerFactory dataContentHandlerFactory) {
        Class clsClass$;
        if (factory != null) {
            throw new Error("DataContentHandlerFactory already defined");
        }
        SecurityManager securityManager = System.getSecurityManager();
        if (securityManager != null) {
            try {
                securityManager.checkSetFactory();
            } catch (SecurityException e2) {
                if (class$javax$activation$DataHandler == null) {
                    clsClass$ = class$("javax.activation.DataHandler");
                    class$javax$activation$DataHandler = clsClass$;
                } else {
                    clsClass$ = class$javax$activation$DataHandler;
                }
                if (clsClass$.getClassLoader() != dataContentHandlerFactory.getClass().getClassLoader()) {
                    throw e2;
                }
            }
        }
        factory = dataContentHandlerFactory;
    }

    static Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }
}
