package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.base.Joiner;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Splitter;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Lists;
import com.google.common.collect.TreeTraverser;
import com.google.common.hash.HashCode;
import com.google.common.hash.HashFunction;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.RandomAccessFile;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.apache.commons.io.IOUtils;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes.dex */
@Beta
public final class Files {
    private static final TreeTraverser<File> FILE_TREE_TRAVERSER = new TreeTraverser<File>() { // from class: com.google.common.io.Files.2
        @Override // com.google.common.collect.TreeTraverser
        public Iterable<File> children(File file) {
            File[] fileArrListFiles;
            return (!file.isDirectory() || (fileArrListFiles = file.listFiles()) == null) ? Collections.emptyList() : Collections.unmodifiableList(Arrays.asList(fileArrListFiles));
        }

        public String toString() {
            return "Files.fileTreeTraverser()";
        }
    };
    private static final int TEMP_DIR_ATTEMPTS = 10000;

    /* JADX INFO: loaded from: classes3.dex */
    enum FilePredicate implements Predicate<File> {
        IS_DIRECTORY { // from class: com.google.common.io.Files.FilePredicate.1
            @Override // com.google.common.base.Predicate
            public boolean apply(File file) {
                return file.isDirectory();
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Files.isDirectory()";
            }
        },
        IS_FILE { // from class: com.google.common.io.Files.FilePredicate.2
            @Override // com.google.common.base.Predicate
            public boolean apply(File file) {
                return file.isFile();
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Files.isFile()";
            }
        }
    }

    private Files() {
    }

    public static BufferedReader newReader(File file, Charset charset) throws FileNotFoundException {
        Preconditions.checkNotNull(file);
        Preconditions.checkNotNull(charset);
        return new BufferedReader(new InputStreamReader(new FileInputStream(file), charset));
    }

    public static BufferedWriter newWriter(File file, Charset charset) throws FileNotFoundException {
        Preconditions.checkNotNull(file);
        Preconditions.checkNotNull(charset);
        return new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file), charset));
    }

    public static ByteSource asByteSource(File file) {
        return new FileByteSource(file);
    }

    /* JADX INFO: loaded from: classes3.dex */
    final class FileByteSource extends ByteSource {
        private final File file;

        private FileByteSource(File file) {
            this.file = (File) Preconditions.checkNotNull(file);
        }

        @Override // com.google.common.io.ByteSource
        public FileInputStream openStream() throws IOException {
            return new FileInputStream(this.file);
        }

        @Override // com.google.common.io.ByteSource
        public long size() throws IOException {
            if (!this.file.isFile()) {
                throw new FileNotFoundException(this.file.toString());
            }
            return this.file.length();
        }

        @Override // com.google.common.io.ByteSource
        public byte[] read() throws Throwable {
            Closer closerCreate = Closer.create();
            try {
                try {
                    FileInputStream fileInputStream = (FileInputStream) closerCreate.register(openStream());
                    return Files.readFile(fileInputStream, fileInputStream.getChannel().size());
                } catch (Throwable th) {
                    throw closerCreate.rethrow(th);
                }
            } finally {
                closerCreate.close();
            }
        }

        public String toString() {
            return "Files.asByteSource(" + this.file + ")";
        }
    }

    static byte[] readFile(InputStream inputStream, long j) throws IOException {
        if (j > 2147483647L) {
            throw new OutOfMemoryError("file is too large to fit in a byte array: " + j + " bytes");
        }
        return j == 0 ? ByteStreams.toByteArray(inputStream) : ByteStreams.toByteArray(inputStream, (int) j);
    }

    public static ByteSink asByteSink(File file, FileWriteMode... fileWriteModeArr) {
        return new FileByteSink(file, fileWriteModeArr);
    }

    /* JADX INFO: loaded from: classes3.dex */
    final class FileByteSink extends ByteSink {
        private final File file;
        private final ImmutableSet<FileWriteMode> modes;

        private FileByteSink(File file, FileWriteMode... fileWriteModeArr) {
            this.file = (File) Preconditions.checkNotNull(file);
            this.modes = ImmutableSet.copyOf(fileWriteModeArr);
        }

        @Override // com.google.common.io.ByteSink
        public FileOutputStream openStream() throws IOException {
            return new FileOutputStream(this.file, this.modes.contains(FileWriteMode.APPEND));
        }

        public String toString() {
            return "Files.asByteSink(" + this.file + ", " + this.modes + ")";
        }
    }

    public static CharSource asCharSource(File file, Charset charset) {
        return asByteSource(file).asCharSource(charset);
    }

    public static CharSink asCharSink(File file, Charset charset, FileWriteMode... fileWriteModeArr) {
        return asByteSink(file, fileWriteModeArr).asCharSink(charset);
    }

    @Deprecated
    public static InputSupplier<FileInputStream> newInputStreamSupplier(File file) {
        return ByteStreams.asInputSupplier(asByteSource(file));
    }

    @Deprecated
    public static OutputSupplier<FileOutputStream> newOutputStreamSupplier(File file) {
        return newOutputStreamSupplier(file, false);
    }

    @Deprecated
    public static OutputSupplier<FileOutputStream> newOutputStreamSupplier(File file, boolean z) {
        return ByteStreams.asOutputSupplier(asByteSink(file, modes(z)));
    }

    private static FileWriteMode[] modes(boolean z) {
        return z ? new FileWriteMode[]{FileWriteMode.APPEND} : new FileWriteMode[0];
    }

    @Deprecated
    public static InputSupplier<InputStreamReader> newReaderSupplier(File file, Charset charset) {
        return CharStreams.asInputSupplier(asCharSource(file, charset));
    }

    @Deprecated
    public static OutputSupplier<OutputStreamWriter> newWriterSupplier(File file, Charset charset) {
        return newWriterSupplier(file, charset, false);
    }

    @Deprecated
    public static OutputSupplier<OutputStreamWriter> newWriterSupplier(File file, Charset charset, boolean z) {
        return CharStreams.asOutputSupplier(asCharSink(file, charset, modes(z)));
    }

    public static byte[] toByteArray(File file) throws IOException {
        return asByteSource(file).read();
    }

    public static String toString(File file, Charset charset) throws IOException {
        return asCharSource(file, charset).read();
    }

    @Deprecated
    public static void copy(InputSupplier<? extends InputStream> inputSupplier, File file) throws Throwable {
        ByteStreams.asByteSource(inputSupplier).copyTo(asByteSink(file, new FileWriteMode[0]));
    }

    public static void write(byte[] bArr, File file) throws Throwable {
        asByteSink(file, new FileWriteMode[0]).write(bArr);
    }

    @Deprecated
    public static void copy(File file, OutputSupplier<? extends OutputStream> outputSupplier) throws Throwable {
        asByteSource(file).copyTo(ByteStreams.asByteSink(outputSupplier));
    }

    public static void copy(File file, OutputStream outputStream) throws Throwable {
        asByteSource(file).copyTo(outputStream);
    }

    public static void copy(File file, File file2) throws Throwable {
        Preconditions.checkArgument(!file.equals(file2), "Source %s and destination %s must be different", file, file2);
        asByteSource(file).copyTo(asByteSink(file2, new FileWriteMode[0]));
    }

    @Deprecated
    public static <R extends Readable & Closeable> void copy(InputSupplier<R> inputSupplier, File file, Charset charset) throws Throwable {
        CharStreams.asCharSource(inputSupplier).copyTo(asCharSink(file, charset, new FileWriteMode[0]));
    }

    public static void write(CharSequence charSequence, File file, Charset charset) throws Throwable {
        asCharSink(file, charset, new FileWriteMode[0]).write(charSequence);
    }

    public static void append(CharSequence charSequence, File file, Charset charset) throws Throwable {
        write(charSequence, file, charset, true);
    }

    private static void write(CharSequence charSequence, File file, Charset charset, boolean z) throws Throwable {
        asCharSink(file, charset, modes(z)).write(charSequence);
    }

    @Deprecated
    public static <W extends Appendable & Closeable> void copy(File file, Charset charset, OutputSupplier<W> outputSupplier) throws Throwable {
        asCharSource(file, charset).copyTo(CharStreams.asCharSink(outputSupplier));
    }

    public static void copy(File file, Charset charset, Appendable appendable) throws Throwable {
        asCharSource(file, charset).copyTo(appendable);
    }

    public static boolean equal(File file, File file2) throws IOException {
        Preconditions.checkNotNull(file);
        Preconditions.checkNotNull(file2);
        if (file == file2 || file.equals(file2)) {
            return true;
        }
        long length = file.length();
        long length2 = file2.length();
        if (length != 0 && length2 != 0 && length != length2) {
            return false;
        }
        return asByteSource(file).contentEquals(asByteSource(file2));
    }

    public static File createTempDir() {
        File file = new File(System.getProperty("java.io.tmpdir"));
        String str = System.currentTimeMillis() + "-";
        for (int i = 0; i < 10000; i++) {
            File file2 = new File(file, str + i);
            if (file2.mkdir()) {
                return file2;
            }
        }
        throw new IllegalStateException("Failed to create directory within 10000 attempts (tried " + str + "0 to " + str + "9999)");
    }

    public static void touch(File file) throws IOException {
        Preconditions.checkNotNull(file);
        if (!file.createNewFile() && !file.setLastModified(System.currentTimeMillis())) {
            throw new IOException("Unable to update modification time of " + file);
        }
    }

    public static void createParentDirs(File file) throws IOException {
        Preconditions.checkNotNull(file);
        File parentFile = file.getCanonicalFile().getParentFile();
        if (parentFile != null) {
            parentFile.mkdirs();
            if (!parentFile.isDirectory()) {
                throw new IOException("Unable to create parent directories of " + file);
            }
        }
    }

    public static void move(File file, File file2) throws Throwable {
        Preconditions.checkNotNull(file);
        Preconditions.checkNotNull(file2);
        Preconditions.checkArgument(!file.equals(file2), "Source %s and destination %s must be different", file, file2);
        if (!file.renameTo(file2)) {
            copy(file, file2);
            if (!file.delete()) {
                if (!file2.delete()) {
                    throw new IOException("Unable to delete " + file2);
                }
                throw new IOException("Unable to delete " + file);
            }
        }
    }

    public static String readFirstLine(File file, Charset charset) throws IOException {
        return asCharSource(file, charset).readFirstLine();
    }

    public static List<String> readLines(File file, Charset charset) throws IOException {
        return (List) readLines(file, charset, new LineProcessor<List<String>>() { // from class: com.google.common.io.Files.1
            final List<String> result = Lists.newArrayList();

            @Override // com.google.common.io.LineProcessor
            public boolean processLine(String str) {
                this.result.add(str);
                return true;
            }

            @Override // com.google.common.io.LineProcessor
            public List<String> getResult() {
                return this.result;
            }
        });
    }

    public static <T> T readLines(File file, Charset charset, LineProcessor<T> lineProcessor) throws IOException {
        return (T) CharStreams.readLines(newReaderSupplier(file, charset), lineProcessor);
    }

    public static <T> T readBytes(File file, ByteProcessor<T> byteProcessor) throws IOException {
        return (T) ByteStreams.readBytes(newInputStreamSupplier(file), byteProcessor);
    }

    public static HashCode hash(File file, HashFunction hashFunction) throws IOException {
        return asByteSource(file).hash(hashFunction);
    }

    public static MappedByteBuffer map(File file) throws IOException {
        Preconditions.checkNotNull(file);
        return map(file, FileChannel.MapMode.READ_ONLY);
    }

    public static MappedByteBuffer map(File file, FileChannel.MapMode mapMode) throws IOException {
        Preconditions.checkNotNull(file);
        Preconditions.checkNotNull(mapMode);
        if (!file.exists()) {
            throw new FileNotFoundException(file.toString());
        }
        return map(file, mapMode, file.length());
    }

    public static MappedByteBuffer map(File file, FileChannel.MapMode mapMode, long j) throws Throwable {
        Preconditions.checkNotNull(file);
        Preconditions.checkNotNull(mapMode);
        Closer closerCreate = Closer.create();
        try {
            try {
                return map((RandomAccessFile) closerCreate.register(new RandomAccessFile(file, mapMode == FileChannel.MapMode.READ_ONLY ? "r" : "rw")), mapMode, j);
            } catch (Throwable th) {
                throw closerCreate.rethrow(th);
            }
        } finally {
            closerCreate.close();
        }
    }

    private static MappedByteBuffer map(RandomAccessFile randomAccessFile, FileChannel.MapMode mapMode, long j) throws Throwable {
        Closer closerCreate = Closer.create();
        try {
            try {
                return ((FileChannel) closerCreate.register(randomAccessFile.getChannel())).map(mapMode, 0L, j);
            } catch (Throwable th) {
                throw closerCreate.rethrow(th);
            }
        } finally {
            closerCreate.close();
        }
    }

    public static String simplifyPath(String str) {
        Preconditions.checkNotNull(str);
        if (str.length() == 0) {
            return ".";
        }
        Iterable<String> iterableSplit = Splitter.on(IOUtils.DIR_SEPARATOR_UNIX).omitEmptyStrings().split(str);
        ArrayList arrayList = new ArrayList();
        for (String str2 : iterableSplit) {
            if (!str2.equals(".")) {
                if (str2.equals("..")) {
                    if (arrayList.size() > 0 && !((String) arrayList.get(arrayList.size() - 1)).equals("..")) {
                        arrayList.remove(arrayList.size() - 1);
                    } else {
                        arrayList.add("..");
                    }
                } else {
                    arrayList.add(str2);
                }
            }
        }
        String strJoin = Joiner.on(IOUtils.DIR_SEPARATOR_UNIX).join(arrayList);
        if (str.charAt(0) == '/') {
            strJoin = URIUtil.SLASH + strJoin;
        }
        while (strJoin.startsWith("/../")) {
            strJoin = strJoin.substring(3);
        }
        if (strJoin.equals("/..")) {
            return URIUtil.SLASH;
        }
        if ("".equals(strJoin)) {
            return ".";
        }
        return strJoin;
    }

    public static String getFileExtension(String str) {
        Preconditions.checkNotNull(str);
        String name = new File(str).getName();
        int iLastIndexOf = name.lastIndexOf(46);
        return iLastIndexOf == -1 ? "" : name.substring(iLastIndexOf + 1);
    }

    public static String getNameWithoutExtension(String str) {
        Preconditions.checkNotNull(str);
        String name = new File(str).getName();
        int iLastIndexOf = name.lastIndexOf(46);
        return iLastIndexOf == -1 ? name : name.substring(0, iLastIndexOf);
    }

    public static TreeTraverser<File> fileTreeTraverser() {
        return FILE_TREE_TRAVERSER;
    }

    public static Predicate<File> isDirectory() {
        return FilePredicate.IS_DIRECTORY;
    }

    public static Predicate<File> isFile() {
        return FilePredicate.IS_FILE;
    }
}
