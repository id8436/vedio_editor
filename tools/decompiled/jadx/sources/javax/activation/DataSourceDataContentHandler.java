package javax.activation;

import java.awt.datatransfer.DataFlavor;
import java.awt.datatransfer.UnsupportedFlavorException;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: DataHandler.java */
/* JADX INFO: loaded from: classes3.dex */
class DataSourceDataContentHandler implements DataContentHandler {
    private DataContentHandler dch;
    private DataSource ds;
    private DataFlavor[] transferFlavors = null;

    public DataSourceDataContentHandler(DataContentHandler dataContentHandler, DataSource dataSource) {
        this.ds = null;
        this.dch = null;
        this.ds = dataSource;
        this.dch = dataContentHandler;
    }

    @Override // javax.activation.DataContentHandler
    public DataFlavor[] getTransferDataFlavors() {
        if (this.transferFlavors == null) {
            if (this.dch != null) {
                this.transferFlavors = this.dch.getTransferDataFlavors();
            } else {
                this.transferFlavors = new DataFlavor[1];
                this.transferFlavors[0] = new ActivationDataFlavor(this.ds.getContentType(), this.ds.getContentType());
            }
        }
        return this.transferFlavors;
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: java.awt.datatransfer.UnsupportedFlavorException */
    @Override // javax.activation.DataContentHandler
    public Object getTransferData(DataFlavor dataFlavor, DataSource dataSource) throws UnsupportedFlavorException, IOException {
        if (this.dch != null) {
            return this.dch.getTransferData(dataFlavor, dataSource);
        }
        if (dataFlavor.equals(getTransferDataFlavors()[0])) {
            return dataSource.getInputStream();
        }
        throw new UnsupportedFlavorException(dataFlavor);
    }

    @Override // javax.activation.DataContentHandler
    public Object getContent(DataSource dataSource) throws IOException {
        return this.dch != null ? this.dch.getContent(dataSource) : dataSource.getInputStream();
    }

    @Override // javax.activation.DataContentHandler
    public void writeTo(Object obj, String str, OutputStream outputStream) throws IOException {
        if (this.dch != null) {
            this.dch.writeTo(obj, str, outputStream);
            return;
        }
        throw new UnsupportedDataTypeException(new StringBuffer().append("no DCH for content type ").append(this.ds.getContentType()).toString());
    }
}
