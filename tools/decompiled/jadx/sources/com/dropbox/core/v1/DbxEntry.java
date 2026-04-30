package com.dropbox.core.v1;

import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXConstants;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.resources.AdobeCommunityConstants;
import com.d.a.a.i;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.json.JsonArrayReader;
import com.dropbox.core.json.JsonDateReader;
import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.dropbox.core.util.Collector;
import com.dropbox.core.util.DumpWriter;
import com.dropbox.core.util.Dumpable;
import com.dropbox.core.util.LangUtil;
import java.io.IOException;
import java.io.Serializable;
import java.util.Date;
import java.util.List;
import org.mortbay.jetty.HttpHeaderValues;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DbxEntry extends Dumpable implements Serializable {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final JsonReader.FieldMapping FM;
    private static final int FM_bytes = 1;
    private static final int FM_client_mtime = 9;
    private static final int FM_contents = 11;
    private static final int FM_hash = 10;
    private static final int FM_icon = 7;
    private static final int FM_is_deleted = 4;
    private static final int FM_is_dir = 3;
    private static final int FM_modified = 8;
    private static final int FM_path = 2;
    private static final int FM_photo_info = 12;
    private static final int FM_rev = 5;
    private static final int FM_size = 0;
    private static final int FM_thumb_exists = 6;
    private static final int FM_video_info = 13;
    public static final JsonReader<DbxEntry> Reader;
    public static final JsonReader<DbxEntry> ReaderMaybeDeleted;
    public static final long serialVersionUID = 0;
    public final String iconName;
    public final boolean mightHaveThumbnail;
    public final String name;
    public final String path;

    public abstract File asFile();

    public abstract Folder asFolder();

    public abstract boolean isFile();

    public abstract boolean isFolder();

    static {
        $assertionsDisabled = !DbxEntry.class.desiredAssertionStatus();
        Reader = new JsonReader<DbxEntry>() { // from class: com.dropbox.core.v1.DbxEntry.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.dropbox.core.json.JsonReader
            public final DbxEntry read(k kVar) throws JsonReadException, IOException {
                return DbxEntry.read(kVar, null).entry;
            }
        };
        ReaderMaybeDeleted = new JsonReader<DbxEntry>() { // from class: com.dropbox.core.v1.DbxEntry.2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.dropbox.core.json.JsonReader
            public final DbxEntry read(k kVar) throws JsonReadException, IOException {
                WithChildrenC maybeDeleted = DbxEntry.readMaybeDeleted(kVar, null);
                if (maybeDeleted == null) {
                    return null;
                }
                return maybeDeleted.entry;
            }
        };
        JsonReader.FieldMapping.Builder builder = new JsonReader.FieldMapping.Builder();
        builder.add(AdobeCommunityConstants.AdobeCommunityResourceSizeKey, 0);
        builder.add(HttpHeaderValues.BYTES, 1);
        builder.add("path", 2);
        builder.add("is_dir", 3);
        builder.add("is_deleted", 4);
        builder.add("rev", 5);
        builder.add("thumb_exists", 6);
        builder.add("icon", 7);
        builder.add(AdobeDCXConstants.AdobeDCXAssetStateModified, 8);
        builder.add("client_mtime", 9);
        builder.add("hash", 10);
        builder.add("contents", 11);
        builder.add("photo_info", 12);
        builder.add("video_info", 13);
        FM = builder.build();
    }

    private DbxEntry(String str, String str2, boolean z) {
        this.name = DbxPathV1.getName(str);
        this.path = str;
        this.iconName = str2;
        this.mightHaveThumbnail = z;
    }

    @Override // com.dropbox.core.util.Dumpable
    protected void dumpFields(DumpWriter dumpWriter) {
        dumpWriter.v(this.path);
        dumpWriter.f("iconName").v(this.iconName);
        dumpWriter.f("mightHaveThumbnail").v(this.mightHaveThumbnail);
    }

    protected boolean partialEquals(DbxEntry dbxEntry) {
        return this.name.equals(dbxEntry.name) && this.path.equals(dbxEntry.path) && this.iconName.equals(dbxEntry.iconName) && this.mightHaveThumbnail == dbxEntry.mightHaveThumbnail;
    }

    protected int partialHashCode() {
        return (this.mightHaveThumbnail ? 1 : 0) + (((((((this.name.hashCode() * 31) + this.path.hashCode()) * 31) + this.iconName.hashCode()) * 31) + this.path.hashCode()) * 31);
    }

    public final class Folder extends DbxEntry {
        public static final JsonReader<Folder> Reader = new JsonReader<Folder>() { // from class: com.dropbox.core.v1.DbxEntry.Folder.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.dropbox.core.json.JsonReader
            public final Folder read(k kVar) throws JsonReadException, IOException {
                i iVarF = kVar.f();
                DbxEntry dbxEntry = DbxEntry.read(kVar, null).entry;
                if (!(dbxEntry instanceof Folder)) {
                    throw new JsonReadException("Expecting a file entry, got a folder entry", iVarF);
                }
                return (Folder) dbxEntry;
            }
        };
        public static final long serialVersionUID = 0;

        public Folder(String str, String str2, boolean z) {
            super(str, str2, z);
        }

        @Override // com.dropbox.core.util.Dumpable
        protected String getTypeName() {
            return "Folder";
        }

        @Override // com.dropbox.core.v1.DbxEntry
        public boolean isFolder() {
            return true;
        }

        @Override // com.dropbox.core.v1.DbxEntry
        public boolean isFile() {
            return false;
        }

        @Override // com.dropbox.core.v1.DbxEntry
        public Folder asFolder() {
            return this;
        }

        @Override // com.dropbox.core.v1.DbxEntry
        public File asFile() {
            throw new RuntimeException("not a file");
        }

        public boolean equals(Object obj) {
            return obj != null && getClass().equals(obj.getClass()) && equals((Folder) obj);
        }

        public boolean equals(Folder folder) {
            return partialEquals(folder);
        }

        public int hashCode() {
            return partialHashCode();
        }
    }

    public final class File extends DbxEntry {
        public static final JsonReader<File> Reader = new JsonReader<File>() { // from class: com.dropbox.core.v1.DbxEntry.File.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.dropbox.core.json.JsonReader
            public final File read(k kVar) throws JsonReadException, IOException {
                i iVarF = kVar.f();
                DbxEntry dbxEntry = DbxEntry.read(kVar, null).entry;
                if (!(dbxEntry instanceof File)) {
                    throw new JsonReadException("Expecting a file entry, got a folder entry", iVarF);
                }
                return (File) dbxEntry;
            }
        };
        public static final JsonReader<File> ReaderMaybeDeleted = new JsonReader<File>() { // from class: com.dropbox.core.v1.DbxEntry.File.2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.dropbox.core.json.JsonReader
            public final File read(k kVar) throws JsonReadException, IOException {
                i iVarF = kVar.f();
                WithChildrenC withChildrenC_read = DbxEntry._read(kVar, null, true);
                if (withChildrenC_read == null) {
                    return null;
                }
                DbxEntry dbxEntry = withChildrenC_read.entry;
                if (!(dbxEntry instanceof File)) {
                    throw new JsonReadException("Expecting a file entry, got a folder entry", iVarF);
                }
                return (File) dbxEntry;
            }
        };
        public static final long serialVersionUID = 0;
        public final Date clientMtime;
        public final String humanSize;
        public final Date lastModified;
        public final long numBytes;
        public final PhotoInfo photoInfo;
        public final String rev;
        public final VideoInfo videoInfo;

        public File(String str, String str2, boolean z, long j, String str3, Date date, Date date2, String str4, PhotoInfo photoInfo, VideoInfo videoInfo) {
            super(str, str2, z);
            this.numBytes = j;
            this.humanSize = str3;
            this.lastModified = date;
            this.clientMtime = date2;
            this.rev = str4;
            this.photoInfo = photoInfo;
            this.videoInfo = videoInfo;
        }

        public File(String str, String str2, boolean z, long j, String str3, Date date, Date date2, String str4) {
            this(str, str2, z, j, str3, date, date2, str4, null, null);
        }

        @Override // com.dropbox.core.v1.DbxEntry, com.dropbox.core.util.Dumpable
        protected void dumpFields(DumpWriter dumpWriter) {
            super.dumpFields(dumpWriter);
            dumpWriter.f("numBytes").v(this.numBytes);
            dumpWriter.f("humanSize").v(this.humanSize);
            dumpWriter.f("lastModified").v(this.lastModified);
            dumpWriter.f("clientMtime").v(this.clientMtime);
            dumpWriter.f("rev").v(this.rev);
            nullablePendingField(dumpWriter, "photoInfo", this.photoInfo, PhotoInfo.PENDING);
            nullablePendingField(dumpWriter, "videoInfo", this.videoInfo, VideoInfo.PENDING);
        }

        private static <T extends Dumpable> void nullablePendingField(DumpWriter dumpWriter, String str, T t, T t2) {
            if (t != null) {
                dumpWriter.f(str);
                if (t == t2) {
                    dumpWriter.verbatim("pending");
                } else {
                    dumpWriter.v(t);
                }
            }
        }

        @Override // com.dropbox.core.util.Dumpable
        protected String getTypeName() {
            return "File";
        }

        @Override // com.dropbox.core.v1.DbxEntry
        public boolean isFolder() {
            return false;
        }

        @Override // com.dropbox.core.v1.DbxEntry
        public boolean isFile() {
            return true;
        }

        @Override // com.dropbox.core.v1.DbxEntry
        public Folder asFolder() {
            throw new RuntimeException("not a folder");
        }

        @Override // com.dropbox.core.v1.DbxEntry
        public File asFile() {
            return this;
        }

        public boolean equals(Object obj) {
            return obj != null && getClass().equals(obj.getClass()) && equals((File) obj);
        }

        public boolean equals(File file) {
            return partialEquals(file) && this.numBytes == file.numBytes && this.humanSize.equals(file.humanSize) && this.lastModified.equals(file.lastModified) && this.clientMtime.equals(file.clientMtime) && this.rev.equals(file.rev) && LangUtil.nullableEquals(this.photoInfo, file.photoInfo) && LangUtil.nullableEquals(this.videoInfo, file.videoInfo);
        }

        public int hashCode() {
            return (((((((((((partialHashCode() * 31) + ((int) this.numBytes)) * 31) + this.lastModified.hashCode()) * 31) + this.clientMtime.hashCode()) * 31) + this.rev.hashCode()) * 31) + LangUtil.nullableHashCode(this.photoInfo)) * 31) + LangUtil.nullableHashCode(this.videoInfo);
        }

        public final class PhotoInfo extends Dumpable {
            public final Location location;
            public final Date timeTaken;
            public static JsonReader<PhotoInfo> Reader = new JsonReader<PhotoInfo>() { // from class: com.dropbox.core.v1.DbxEntry.File.PhotoInfo.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.dropbox.core.json.JsonReader
                public PhotoInfo read(k kVar) throws JsonReadException, IOException {
                    Location location;
                    Date optional;
                    Location location2 = null;
                    JsonReader.expectObjectStart(kVar);
                    Date date = null;
                    while (kVar.c() == o.FIELD_NAME) {
                        String strD = kVar.d();
                        JsonReader.nextToken(kVar);
                        if (strD.equals("lat_long")) {
                            location = Location.Reader.read(kVar);
                            optional = date;
                        } else if (strD.equals("time_taken")) {
                            Location location3 = location2;
                            optional = JsonDateReader.Dropbox.readOptional(kVar);
                            location = location3;
                        } else {
                            JsonReader.skipValue(kVar);
                            location = location2;
                            optional = date;
                        }
                        date = optional;
                        location2 = location;
                    }
                    JsonReader.expectObjectEnd(kVar);
                    return new PhotoInfo(date, location2);
                }
            };
            public static final PhotoInfo PENDING = new PhotoInfo(null, null);

            public PhotoInfo(Date date, Location location) {
                this.timeTaken = date;
                this.location = location;
            }

            @Override // com.dropbox.core.util.Dumpable
            protected void dumpFields(DumpWriter dumpWriter) {
                dumpWriter.f("timeTaken").v(this.timeTaken);
                dumpWriter.f("location").v(this.location);
            }

            public boolean equals(Object obj) {
                return obj != null && getClass().equals(obj.getClass()) && equals((PhotoInfo) obj);
            }

            public boolean equals(PhotoInfo photoInfo) {
                if (photoInfo == PENDING || this == PENDING) {
                    return photoInfo == this;
                }
                return LangUtil.nullableEquals(this.timeTaken, photoInfo.timeTaken) && LangUtil.nullableEquals(this.location, photoInfo.location);
            }

            public int hashCode() {
                return ((LangUtil.nullableHashCode(this.timeTaken) + 0) * 31) + LangUtil.nullableHashCode(this.location);
            }
        }

        public final class VideoInfo extends Dumpable {
            public final Long duration;
            public final Location location;
            public final Date timeTaken;
            public static JsonReader<VideoInfo> Reader = new JsonReader<VideoInfo>() { // from class: com.dropbox.core.v1.DbxEntry.File.VideoInfo.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.dropbox.core.json.JsonReader
                public VideoInfo read(k kVar) throws JsonReadException, IOException {
                    Long optional;
                    Date optional2;
                    Location location;
                    Long l = null;
                    JsonReader.expectObjectStart(kVar);
                    Date date = null;
                    Location location2 = null;
                    while (kVar.c() == o.FIELD_NAME) {
                        String strD = kVar.d();
                        JsonReader.nextToken(kVar);
                        if (strD.equals("lat_long")) {
                            Long l2 = l;
                            optional2 = date;
                            location = Location.Reader.read(kVar);
                            optional = l2;
                        } else if (strD.equals("time_taken")) {
                            location = location2;
                            optional = l;
                            optional2 = JsonDateReader.Dropbox.readOptional(kVar);
                        } else if (strD.equals("duration")) {
                            optional = JsonReader.UnsignedLongReader.readOptional(kVar);
                            optional2 = date;
                            location = location2;
                        } else {
                            JsonReader.skipValue(kVar);
                            optional = l;
                            optional2 = date;
                            location = location2;
                        }
                        location2 = location;
                        date = optional2;
                        l = optional;
                    }
                    JsonReader.expectObjectEnd(kVar);
                    return new VideoInfo(date, location2, l);
                }
            };
            public static final VideoInfo PENDING = new VideoInfo(null, null, null);

            public VideoInfo(Date date, Location location, Long l) {
                this.timeTaken = date;
                this.location = location;
                this.duration = l;
            }

            @Override // com.dropbox.core.util.Dumpable
            protected void dumpFields(DumpWriter dumpWriter) {
                dumpWriter.f("timeTaken").v(this.timeTaken);
                dumpWriter.f("location").v(this.location);
                dumpWriter.f("duration").v(this.duration);
            }

            public boolean equals(Object obj) {
                return obj != null && getClass().equals(obj.getClass()) && equals((VideoInfo) obj);
            }

            public boolean equals(VideoInfo videoInfo) {
                if (videoInfo == PENDING || this == PENDING) {
                    return videoInfo == this;
                }
                return LangUtil.nullableEquals(this.timeTaken, videoInfo.timeTaken) && LangUtil.nullableEquals(this.location, videoInfo.location) && LangUtil.nullableEquals(this.duration, videoInfo.duration);
            }

            public int hashCode() {
                return ((((LangUtil.nullableHashCode(this.timeTaken) + 0) * 31) + LangUtil.nullableHashCode(this.location)) * 31) + LangUtil.nullableHashCode(this.duration);
            }
        }

        public class Location extends Dumpable {
            public static JsonReader<Location> Reader = new JsonReader<Location>() { // from class: com.dropbox.core.v1.DbxEntry.File.Location.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.dropbox.core.json.JsonReader
                public Location read(k kVar) throws JsonReadException, IOException {
                    if (JsonArrayReader.isArrayStart(kVar)) {
                        JsonReader.expectArrayStart(kVar);
                        Location location = new Location(JsonReader.readDouble(kVar), JsonReader.readDouble(kVar));
                        JsonReader.expectArrayEnd(kVar);
                        return location;
                    }
                    JsonReader.skipValue(kVar);
                    return null;
                }
            };
            public final double latitude;
            public final double longitude;

            public Location(double d2, double d3) {
                this.latitude = d2;
                this.longitude = d3;
            }

            @Override // com.dropbox.core.util.Dumpable
            protected void dumpFields(DumpWriter dumpWriter) {
                dumpWriter.f("latitude").v(this.latitude);
                dumpWriter.f("longitude").v(this.longitude);
            }

            public int hashCode() {
                long jDoubleToLongBits = Double.doubleToLongBits(this.latitude);
                long jDoubleToLongBits2 = Double.doubleToLongBits(this.longitude);
                return ((((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32))) + 527) * 31) + ((int) (jDoubleToLongBits2 ^ (jDoubleToLongBits2 >>> 32)));
            }

            public boolean equals(Object obj) {
                return obj != null && getClass().equals(obj.getClass()) && equals((Location) obj);
            }

            public boolean equals(Location location) {
                return this.latitude == location.latitude && this.longitude == location.longitude;
            }
        }
    }

    public final class WithChildren extends Dumpable implements Serializable {
        public static final JsonReader<WithChildren> Reader = new JsonReader<WithChildren>() { // from class: com.dropbox.core.v1.DbxEntry.WithChildren.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.dropbox.core.json.JsonReader
            public final WithChildren read(k kVar) throws JsonReadException, IOException {
                WithChildrenC withChildrenC = DbxEntry.read(kVar, new Collector.ArrayListCollector());
                return new WithChildren(withChildrenC.entry, withChildrenC.hash, (List) withChildrenC.children);
            }
        };
        public static final JsonReader<WithChildren> ReaderMaybeDeleted = new JsonReader<WithChildren>() { // from class: com.dropbox.core.v1.DbxEntry.WithChildren.2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.dropbox.core.json.JsonReader
            public final WithChildren read(k kVar) throws JsonReadException, IOException {
                WithChildrenC maybeDeleted = DbxEntry.readMaybeDeleted(kVar, new Collector.ArrayListCollector());
                if (maybeDeleted == null) {
                    return null;
                }
                return new WithChildren(maybeDeleted.entry, maybeDeleted.hash, (List) maybeDeleted.children);
            }
        };
        public static final long serialVersionUID = 0;
        public final List<DbxEntry> children;
        public final DbxEntry entry;
        public final String hash;

        public WithChildren(DbxEntry dbxEntry, String str, List<DbxEntry> list) {
            this.entry = dbxEntry;
            this.hash = str;
            this.children = list;
        }

        public boolean equals(Object obj) {
            return obj != null && getClass().equals(obj.getClass()) && equals((WithChildren) obj);
        }

        public boolean equals(WithChildren withChildren) {
            if (this.children != null) {
                if (!this.children.equals(withChildren.children)) {
                    return false;
                }
            } else if (withChildren.children != null) {
                return false;
            }
            if (!this.entry.equals(withChildren.entry)) {
                return false;
            }
            if (this.hash != null) {
                if (!this.hash.equals(withChildren.hash)) {
                    return false;
                }
            } else if (withChildren.hash != null) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return (((this.hash != null ? this.hash.hashCode() : 0) + (this.entry.hashCode() * 31)) * 31) + (this.children != null ? this.children.hashCode() : 0);
        }

        @Override // com.dropbox.core.util.Dumpable
        protected void dumpFields(DumpWriter dumpWriter) {
            dumpWriter.v(this.entry);
            dumpWriter.f("hash").v(this.hash);
            dumpWriter.f("children").v(this.children);
        }
    }

    public final class WithChildrenC<C> extends Dumpable implements Serializable {
        public static final long serialVersionUID = 0;
        public final C children;
        public final DbxEntry entry;
        public final String hash;

        public WithChildrenC(DbxEntry dbxEntry, String str, C c2) {
            this.entry = dbxEntry;
            this.hash = str;
            this.children = c2;
        }

        public class Reader<C> extends JsonReader<WithChildrenC<C>> {
            private final Collector<DbxEntry, ? extends C> collector;

            public Reader(Collector<DbxEntry, ? extends C> collector) {
                this.collector = collector;
            }

            @Override // com.dropbox.core.json.JsonReader
            public final WithChildrenC<C> read(k kVar) throws JsonReadException, IOException {
                return DbxEntry.read(kVar, this.collector);
            }
        }

        public class ReaderMaybeDeleted<C> extends JsonReader<WithChildrenC<C>> {
            private final Collector<DbxEntry, ? extends C> collector;

            public ReaderMaybeDeleted(Collector<DbxEntry, ? extends C> collector) {
                this.collector = collector;
            }

            @Override // com.dropbox.core.json.JsonReader
            public final WithChildrenC<C> read(k kVar) throws JsonReadException, IOException {
                return DbxEntry.readMaybeDeleted(kVar, this.collector);
            }
        }

        public boolean equals(Object obj) {
            return obj != null && getClass().equals(obj.getClass()) && equals((WithChildrenC<?>) obj);
        }

        public boolean equals(WithChildrenC<?> withChildrenC) {
            if (this.children != null) {
                if (!this.children.equals(withChildrenC.children)) {
                    return false;
                }
            } else if (withChildrenC.children != null) {
                return false;
            }
            if (!this.entry.equals(withChildrenC.entry)) {
                return false;
            }
            if (this.hash != null) {
                if (!this.hash.equals(withChildrenC.hash)) {
                    return false;
                }
            } else if (withChildrenC.hash != null) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return (((this.hash != null ? this.hash.hashCode() : 0) + (this.entry.hashCode() * 31)) * 31) + (this.children != null ? this.children.hashCode() : 0);
        }

        @Override // com.dropbox.core.util.Dumpable
        protected void dumpFields(DumpWriter dumpWriter) {
            dumpWriter.v(this.entry);
            dumpWriter.f("hash").v(this.hash);
            if (this.children != null) {
                dumpWriter.f("children").verbatim(this.children.toString());
            }
        }
    }

    public static <C> WithChildrenC<C> readMaybeDeleted(k kVar, Collector<DbxEntry, ? extends C> collector) throws JsonReadException, IOException {
        return _read(kVar, collector, true);
    }

    public static <C> WithChildrenC<C> read(k kVar, Collector<DbxEntry, ? extends C> collector) throws JsonReadException, IOException {
        WithChildrenC<C> withChildrenC_read = _read(kVar, collector, false);
        if ($assertionsDisabled || withChildrenC_read != null) {
            return withChildrenC_read;
        }
        throw new AssertionError("@AssumeAssertion(nullness)");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static <C> WithChildrenC<C> _read(k kVar, Collector<DbxEntry, ? extends C> collector, boolean z) throws JsonReadException, IOException {
        DbxEntry file;
        Object field;
        long unsignedLongField;
        Boolean bool;
        Boolean field2;
        String str;
        String str2;
        String field3;
        i iVarExpectObjectStart = JsonReader.expectObjectStart(kVar);
        String str3 = null;
        long j = -1;
        String str4 = null;
        Boolean bool2 = null;
        Boolean bool3 = null;
        String field4 = null;
        Boolean field5 = null;
        String field6 = null;
        Date field7 = null;
        Date field8 = null;
        String str5 = null;
        Object obj = null;
        File.PhotoInfo photoInfo = null;
        File.VideoInfo videoInfo = null;
        while (kVar.c() == o.FIELD_NAME) {
            String strD = kVar.d();
            JsonReader.nextToken(kVar);
            int i = FM.get(strD);
            switch (i) {
                case -1:
                    try {
                        JsonReader.skipValue(kVar);
                        field = obj;
                        unsignedLongField = j;
                        bool = bool3;
                        field2 = bool2;
                        str = str3;
                        str2 = str4;
                        field3 = str5;
                    } catch (JsonReadException e2) {
                        throw e2.addFieldContext(strD);
                    }
                    break;
                case 0:
                    String field9 = JsonReader.StringReader.readField(kVar, strD, str3);
                    str2 = str4;
                    field3 = str5;
                    Boolean bool4 = bool3;
                    str = field9;
                    field = obj;
                    unsignedLongField = j;
                    field2 = bool2;
                    bool = bool4;
                    break;
                case 1:
                    field = obj;
                    unsignedLongField = JsonReader.readUnsignedLongField(kVar, strD, j);
                    bool = bool3;
                    field2 = bool2;
                    str = str3;
                    str2 = str4;
                    field3 = str5;
                    break;
                case 2:
                    String field10 = JsonReader.StringReader.readField(kVar, strD, str4);
                    field3 = str5;
                    Object obj2 = obj;
                    unsignedLongField = j;
                    bool = bool3;
                    field2 = bool2;
                    str = str3;
                    str2 = field10;
                    field = obj2;
                    break;
                case 3:
                    Object obj3 = obj;
                    unsignedLongField = j;
                    bool = bool3;
                    field2 = JsonReader.BooleanReader.readField(kVar, strD, bool2);
                    field = obj3;
                    str = str3;
                    str2 = str4;
                    field3 = str5;
                    break;
                case 4:
                    Boolean field11 = JsonReader.BooleanReader.readField(kVar, strD, bool3);
                    str = str3;
                    str2 = str4;
                    field3 = str5;
                    field = obj;
                    unsignedLongField = j;
                    field2 = bool2;
                    bool = field11;
                    break;
                case 5:
                    field4 = JsonReader.StringReader.readField(kVar, strD, field4);
                    field = obj;
                    unsignedLongField = j;
                    bool = bool3;
                    field2 = bool2;
                    str = str3;
                    str2 = str4;
                    field3 = str5;
                    break;
                case 6:
                    field5 = JsonReader.BooleanReader.readField(kVar, strD, field5);
                    field = obj;
                    unsignedLongField = j;
                    bool = bool3;
                    field2 = bool2;
                    str = str3;
                    str2 = str4;
                    field3 = str5;
                    break;
                case 7:
                    field6 = JsonReader.StringReader.readField(kVar, strD, field6);
                    field = obj;
                    unsignedLongField = j;
                    bool = bool3;
                    field2 = bool2;
                    str = str3;
                    str2 = str4;
                    field3 = str5;
                    break;
                case 8:
                    field7 = JsonDateReader.Dropbox.readField(kVar, strD, field7);
                    field = obj;
                    unsignedLongField = j;
                    bool = bool3;
                    field2 = bool2;
                    str = str3;
                    str2 = str4;
                    field3 = str5;
                    break;
                case 9:
                    field8 = JsonDateReader.Dropbox.readField(kVar, strD, field8);
                    field = obj;
                    unsignedLongField = j;
                    bool = bool3;
                    field2 = bool2;
                    str = str3;
                    str2 = str4;
                    field3 = str5;
                    break;
                case 10:
                    if (collector == null) {
                        throw new JsonReadException("not expecting \"hash\" field, since we didn't ask for children", kVar.f());
                    }
                    Object obj4 = obj;
                    unsignedLongField = j;
                    bool = bool3;
                    field2 = bool2;
                    str = str3;
                    str2 = str4;
                    field3 = JsonReader.StringReader.readField(kVar, strD, str5);
                    field = obj4;
                    break;
                case 11:
                    if (collector == null) {
                        throw new JsonReadException("not expecting \"contents\" field, since we didn't ask for children", kVar.f());
                    }
                    field = JsonArrayReader.mk(Reader, collector).readField(kVar, strD, obj);
                    unsignedLongField = j;
                    bool = bool3;
                    field2 = bool2;
                    str = str3;
                    str2 = str4;
                    field3 = str5;
                    break;
                case 12:
                    photoInfo = (File.PhotoInfo) PendingReader.mk(File.PhotoInfo.Reader, File.PhotoInfo.PENDING).readField(kVar, strD, photoInfo);
                    field = obj;
                    unsignedLongField = j;
                    bool = bool3;
                    field2 = bool2;
                    str = str3;
                    str2 = str4;
                    field3 = str5;
                    break;
                case 13:
                    videoInfo = (File.VideoInfo) PendingReader.mk(File.VideoInfo.Reader, File.VideoInfo.PENDING).readField(kVar, strD, videoInfo);
                    field = obj;
                    unsignedLongField = j;
                    bool = bool3;
                    field2 = bool2;
                    str = str3;
                    str2 = str4;
                    field3 = str5;
                    break;
                default:
                    throw new AssertionError("bad index: " + i + ", field = \"" + strD + "\"");
            }
            bool2 = field2;
            String str6 = field3;
            str4 = str2;
            str3 = str;
            bool3 = bool;
            j = unsignedLongField;
            str5 = str6;
            obj = field;
        }
        JsonReader.expectObjectEnd(kVar);
        if (str4 == null) {
            throw new JsonReadException("missing field \"path\"", iVarExpectObjectStart);
        }
        if (field6 == null) {
            throw new JsonReadException("missing field \"icon\"", iVarExpectObjectStart);
        }
        if (bool3 == null) {
            bool3 = Boolean.FALSE;
        }
        if (bool2 == null) {
            bool2 = Boolean.FALSE;
        }
        if (field5 == null) {
            field5 = Boolean.FALSE;
        }
        if (bool2.booleanValue() && (obj != null || str5 != null)) {
            if (str5 == null) {
                throw new JsonReadException("missing \"hash\", when we asked for children", iVarExpectObjectStart);
            }
            if (obj == null) {
                throw new JsonReadException("missing \"contents\", when we asked for children", iVarExpectObjectStart);
            }
        }
        if (bool2.booleanValue()) {
            file = new Folder(str4, field6, field5.booleanValue());
        } else {
            if (str3 == null) {
                throw new JsonReadException("missing \"size\" for a file entry", iVarExpectObjectStart);
            }
            if (j == -1) {
                throw new JsonReadException("missing \"bytes\" for a file entry", iVarExpectObjectStart);
            }
            if (field7 == null) {
                throw new JsonReadException("missing \"modified\" for a file entry", iVarExpectObjectStart);
            }
            if (field8 == null) {
                throw new JsonReadException("missing \"client_mtime\" for a file entry", iVarExpectObjectStart);
            }
            if (field4 == null) {
                throw new JsonReadException("missing \"rev\" for a file entry", iVarExpectObjectStart);
            }
            file = new File(str4, field6, field5.booleanValue(), j, str3, field7, field8, field4, photoInfo, videoInfo);
        }
        if (bool3.booleanValue()) {
            if (z) {
                return null;
            }
            throw new JsonReadException("not expecting \"is_deleted\" entry here", iVarExpectObjectStart);
        }
        return new WithChildrenC<>(file, str5, obj);
    }

    final class PendingReader<T> extends JsonReader<T> {
        private final T pendingValue;
        private final JsonReader<T> reader;

        public PendingReader(JsonReader<T> jsonReader, T t) {
            this.reader = jsonReader;
            this.pendingValue = t;
        }

        public static <T> PendingReader<T> mk(JsonReader<T> jsonReader, T t) {
            return new PendingReader<>(jsonReader, t);
        }

        @Override // com.dropbox.core.json.JsonReader
        public T read(k kVar) throws JsonReadException, IOException {
            if (kVar.c() != o.VALUE_STRING) {
                return this.reader.read(kVar);
            }
            if (!kVar.g().equals("pending")) {
                throw new JsonReadException("got a string, but the value wasn't \"pending\"", kVar.e());
            }
            kVar.a();
            return this.pendingValue;
        }
    }
}
