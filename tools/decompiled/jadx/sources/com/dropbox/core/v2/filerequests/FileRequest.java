package com.dropbox.core.v2.filerequests;

import com.adobe.creativesdk.foundation.adobeinternal.storage.library.resources.AdobeCommunityConstants;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.util.LangUtil;
import com.dropbox.core.v2.filerequests.FileRequestDeadline;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class FileRequest {
    protected final Date created;
    protected final FileRequestDeadline deadline;
    protected final String destination;
    protected final long fileCount;
    protected final String id;
    protected final boolean isOpen;
    protected final String title;
    protected final String url;

    public FileRequest(String str, String str2, String str3, Date date, boolean z, long j, String str4, FileRequestDeadline fileRequestDeadline) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'id' is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String 'id' is shorter than 1");
        }
        if (!Pattern.matches("[-_0-9a-zA-Z]+", str)) {
            throw new IllegalArgumentException("String 'id' does not match pattern");
        }
        this.id = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'url' is null");
        }
        if (str2.length() < 1) {
            throw new IllegalArgumentException("String 'url' is shorter than 1");
        }
        this.url = str2;
        if (str3 == null) {
            throw new IllegalArgumentException("Required value for 'title' is null");
        }
        if (str3.length() < 1) {
            throw new IllegalArgumentException("String 'title' is shorter than 1");
        }
        this.title = str3;
        if (str4 != null && !Pattern.matches("/(.|[\\r\\n])*", str4)) {
            throw new IllegalArgumentException("String 'destination' does not match pattern");
        }
        this.destination = str4;
        if (date == null) {
            throw new IllegalArgumentException("Required value for 'created' is null");
        }
        this.created = LangUtil.truncateMillis(date);
        this.deadline = fileRequestDeadline;
        this.isOpen = z;
        this.fileCount = j;
    }

    public FileRequest(String str, String str2, String str3, Date date, boolean z, long j) {
        this(str, str2, str3, date, z, j, null, null);
    }

    public String getId() {
        return this.id;
    }

    public String getUrl() {
        return this.url;
    }

    public String getTitle() {
        return this.title;
    }

    public Date getCreated() {
        return this.created;
    }

    public boolean getIsOpen() {
        return this.isOpen;
    }

    public long getFileCount() {
        return this.fileCount;
    }

    public String getDestination() {
        return this.destination;
    }

    public FileRequestDeadline getDeadline() {
        return this.deadline;
    }

    public static Builder newBuilder(String str, String str2, String str3, Date date, boolean z, long j) {
        return new Builder(str, str2, str3, date, z, j);
    }

    public class Builder {
        protected final Date created;
        protected FileRequestDeadline deadline;
        protected String destination;
        protected final long fileCount;
        protected final String id;
        protected final boolean isOpen;
        protected final String title;
        protected final String url;

        protected Builder(String str, String str2, String str3, Date date, boolean z, long j) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'id' is null");
            }
            if (str.length() < 1) {
                throw new IllegalArgumentException("String 'id' is shorter than 1");
            }
            if (!Pattern.matches("[-_0-9a-zA-Z]+", str)) {
                throw new IllegalArgumentException("String 'id' does not match pattern");
            }
            this.id = str;
            if (str2 == null) {
                throw new IllegalArgumentException("Required value for 'url' is null");
            }
            if (str2.length() < 1) {
                throw new IllegalArgumentException("String 'url' is shorter than 1");
            }
            this.url = str2;
            if (str3 == null) {
                throw new IllegalArgumentException("Required value for 'title' is null");
            }
            if (str3.length() < 1) {
                throw new IllegalArgumentException("String 'title' is shorter than 1");
            }
            this.title = str3;
            if (date == null) {
                throw new IllegalArgumentException("Required value for 'created' is null");
            }
            this.created = LangUtil.truncateMillis(date);
            this.isOpen = z;
            this.fileCount = j;
            this.destination = null;
            this.deadline = null;
        }

        public Builder withDestination(String str) {
            if (str != null && !Pattern.matches("/(.|[\\r\\n])*", str)) {
                throw new IllegalArgumentException("String 'destination' does not match pattern");
            }
            this.destination = str;
            return this;
        }

        public Builder withDeadline(FileRequestDeadline fileRequestDeadline) {
            this.deadline = fileRequestDeadline;
            return this;
        }

        public FileRequest build() {
            return new FileRequest(this.id, this.url, this.title, this.created, this.isOpen, this.fileCount, this.destination, this.deadline);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.id, this.url, this.title, this.destination, this.created, this.deadline, Boolean.valueOf(this.isOpen), Long.valueOf(this.fileCount)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            FileRequest fileRequest = (FileRequest) obj;
            if ((this.id == fileRequest.id || this.id.equals(fileRequest.id)) && ((this.url == fileRequest.url || this.url.equals(fileRequest.url)) && ((this.title == fileRequest.title || this.title.equals(fileRequest.title)) && ((this.created == fileRequest.created || this.created.equals(fileRequest.created)) && this.isOpen == fileRequest.isOpen && this.fileCount == fileRequest.fileCount && (this.destination == fileRequest.destination || (this.destination != null && this.destination.equals(fileRequest.destination))))))) {
                if (this.deadline == fileRequest.deadline) {
                    return true;
                }
                if (this.deadline != null && this.deadline.equals(fileRequest.deadline)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<FileRequest> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(FileRequest fileRequest, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("id");
            StoneSerializers.string().serialize(fileRequest.id, gVar);
            gVar.a("url");
            StoneSerializers.string().serialize(fileRequest.url, gVar);
            gVar.a("title");
            StoneSerializers.string().serialize(fileRequest.title, gVar);
            gVar.a("created");
            StoneSerializers.timestamp().serialize(fileRequest.created, gVar);
            gVar.a("is_open");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(fileRequest.isOpen), gVar);
            gVar.a("file_count");
            StoneSerializers.int64().serialize(Long.valueOf(fileRequest.fileCount), gVar);
            if (fileRequest.destination != null) {
                gVar.a(AdobeCommunityConstants.AdobeCommunityCopyJSONKeyDestination);
                StoneSerializers.nullable(StoneSerializers.string()).serialize(fileRequest.destination, gVar);
            }
            if (fileRequest.deadline != null) {
                gVar.a("deadline");
                StoneSerializers.nullableStruct(FileRequestDeadline.Serializer.INSTANCE).serialize(fileRequest.deadline, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public FileRequest deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Long lDeserialize;
            String strDeserialize;
            Boolean boolDeserialize;
            FileRequestDeadline fileRequestDeadline = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str = null;
                Long l = null;
                Boolean bool = null;
                Date dateDeserialize = null;
                String strDeserialize2 = null;
                String strDeserialize3 = null;
                String str2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("id".equals(strD)) {
                        boolDeserialize = bool;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        lDeserialize = l;
                    } else if ("url".equals(strD)) {
                        strDeserialize3 = StoneSerializers.string().deserialize(kVar);
                        lDeserialize = l;
                        Boolean bool2 = bool;
                        strDeserialize = str2;
                        boolDeserialize = bool2;
                    } else if ("title".equals(strD)) {
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                        lDeserialize = l;
                        Boolean bool3 = bool;
                        strDeserialize = str2;
                        boolDeserialize = bool3;
                    } else if ("created".equals(strD)) {
                        dateDeserialize = StoneSerializers.timestamp().deserialize(kVar);
                        lDeserialize = l;
                        Boolean bool4 = bool;
                        strDeserialize = str2;
                        boolDeserialize = bool4;
                    } else if ("is_open".equals(strD)) {
                        strDeserialize = str2;
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                        lDeserialize = l;
                    } else if ("file_count".equals(strD)) {
                        lDeserialize = StoneSerializers.int64().deserialize(kVar);
                        Boolean bool5 = bool;
                        strDeserialize = str2;
                        boolDeserialize = bool5;
                    } else if (AdobeCommunityConstants.AdobeCommunityCopyJSONKeyDestination.equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        lDeserialize = l;
                        Boolean bool6 = bool;
                        strDeserialize = str2;
                        boolDeserialize = bool6;
                    } else if ("deadline".equals(strD)) {
                        fileRequestDeadline = (FileRequestDeadline) StoneSerializers.nullableStruct(FileRequestDeadline.Serializer.INSTANCE).deserialize(kVar);
                        lDeserialize = l;
                        Boolean bool7 = bool;
                        strDeserialize = str2;
                        boolDeserialize = bool7;
                    } else {
                        skipValue(kVar);
                        lDeserialize = l;
                        Boolean bool8 = bool;
                        strDeserialize = str2;
                        boolDeserialize = bool8;
                    }
                    l = lDeserialize;
                    Boolean bool9 = boolDeserialize;
                    str2 = strDeserialize;
                    bool = bool9;
                }
                if (str2 == null) {
                    throw new j(kVar, "Required field \"id\" missing.");
                }
                if (strDeserialize3 == null) {
                    throw new j(kVar, "Required field \"url\" missing.");
                }
                if (strDeserialize2 == null) {
                    throw new j(kVar, "Required field \"title\" missing.");
                }
                if (dateDeserialize == null) {
                    throw new j(kVar, "Required field \"created\" missing.");
                }
                if (bool == null) {
                    throw new j(kVar, "Required field \"is_open\" missing.");
                }
                if (l == null) {
                    throw new j(kVar, "Required field \"file_count\" missing.");
                }
                FileRequest fileRequest = new FileRequest(str2, strDeserialize3, strDeserialize2, dateDeserialize, bool.booleanValue(), l.longValue(), str, fileRequestDeadline);
                if (!z) {
                    expectEndObject(kVar);
                }
                return fileRequest;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
