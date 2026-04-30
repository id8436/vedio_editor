package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.util.LangUtil;
import com.dropbox.core.v2.files.Dimensions;
import com.dropbox.core.v2.files.GpsCoordinates;
import com.dropbox.core.v2.files.PhotoMetadata;
import com.dropbox.core.v2.files.VideoMetadata;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class MediaMetadata {
    protected final Dimensions dimensions;
    protected final GpsCoordinates location;
    protected final Date timeTaken;

    public MediaMetadata(Dimensions dimensions, GpsCoordinates gpsCoordinates, Date date) {
        this.dimensions = dimensions;
        this.location = gpsCoordinates;
        this.timeTaken = LangUtil.truncateMillis(date);
    }

    public MediaMetadata() {
        this(null, null, null);
    }

    public Dimensions getDimensions() {
        return this.dimensions;
    }

    public GpsCoordinates getLocation() {
        return this.location;
    }

    public Date getTimeTaken() {
        return this.timeTaken;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public class Builder {
        protected Dimensions dimensions = null;
        protected GpsCoordinates location = null;
        protected Date timeTaken = null;

        protected Builder() {
        }

        public Builder withDimensions(Dimensions dimensions) {
            this.dimensions = dimensions;
            return this;
        }

        public Builder withLocation(GpsCoordinates gpsCoordinates) {
            this.location = gpsCoordinates;
            return this;
        }

        public Builder withTimeTaken(Date date) {
            this.timeTaken = LangUtil.truncateMillis(date);
            return this;
        }

        public MediaMetadata build() {
            return new MediaMetadata(this.dimensions, this.location, this.timeTaken);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.dimensions, this.location, this.timeTaken});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            MediaMetadata mediaMetadata = (MediaMetadata) obj;
            if ((this.dimensions == mediaMetadata.dimensions || (this.dimensions != null && this.dimensions.equals(mediaMetadata.dimensions))) && (this.location == mediaMetadata.location || (this.location != null && this.location.equals(mediaMetadata.location)))) {
                if (this.timeTaken == mediaMetadata.timeTaken) {
                    return true;
                }
                if (this.timeTaken != null && this.timeTaken.equals(mediaMetadata.timeTaken)) {
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

    class Serializer extends StructSerializer<MediaMetadata> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(MediaMetadata mediaMetadata, g gVar, boolean z) throws IOException {
            if (mediaMetadata instanceof PhotoMetadata) {
                PhotoMetadata.Serializer.INSTANCE.serialize((PhotoMetadata) mediaMetadata, gVar, z);
                return;
            }
            if (mediaMetadata instanceof VideoMetadata) {
                VideoMetadata.Serializer.INSTANCE.serialize((VideoMetadata) mediaMetadata, gVar, z);
                return;
            }
            if (!z) {
                gVar.e();
            }
            if (mediaMetadata.dimensions != null) {
                gVar.a("dimensions");
                StoneSerializers.nullableStruct(Dimensions.Serializer.INSTANCE).serialize(mediaMetadata.dimensions, gVar);
            }
            if (mediaMetadata.location != null) {
                gVar.a("location");
                StoneSerializers.nullableStruct(GpsCoordinates.Serializer.INSTANCE).serialize(mediaMetadata.location, gVar);
            }
            if (mediaMetadata.timeTaken != null) {
                gVar.a("time_taken");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(mediaMetadata.timeTaken, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public MediaMetadata deserialize(k kVar, boolean z) throws IOException {
            String tag;
            MediaMetadata mediaMetadataDeserialize;
            Date date;
            GpsCoordinates gpsCoordinates;
            Dimensions dimensions;
            Date date2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
                if ("".equals(tag)) {
                    tag = null;
                }
            }
            if (tag == null) {
                GpsCoordinates gpsCoordinates2 = null;
                Dimensions dimensions2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("dimensions".equals(strD)) {
                        Date date3 = date2;
                        gpsCoordinates = gpsCoordinates2;
                        dimensions = (Dimensions) StoneSerializers.nullableStruct(Dimensions.Serializer.INSTANCE).deserialize(kVar);
                        date = date3;
                    } else if ("location".equals(strD)) {
                        dimensions = dimensions2;
                        date = date2;
                        gpsCoordinates = (GpsCoordinates) StoneSerializers.nullableStruct(GpsCoordinates.Serializer.INSTANCE).deserialize(kVar);
                    } else if ("time_taken".equals(strD)) {
                        date = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(kVar);
                        gpsCoordinates = gpsCoordinates2;
                        dimensions = dimensions2;
                    } else {
                        skipValue(kVar);
                        date = date2;
                        gpsCoordinates = gpsCoordinates2;
                        dimensions = dimensions2;
                    }
                    dimensions2 = dimensions;
                    gpsCoordinates2 = gpsCoordinates;
                    date2 = date;
                }
                mediaMetadataDeserialize = new MediaMetadata(dimensions2, gpsCoordinates2, date2);
            } else if ("".equals(tag)) {
                mediaMetadataDeserialize = INSTANCE.deserialize(kVar, true);
            } else if ("photo".equals(tag)) {
                mediaMetadataDeserialize = PhotoMetadata.Serializer.INSTANCE.deserialize(kVar, true);
            } else if ("video".equals(tag)) {
                mediaMetadataDeserialize = VideoMetadata.Serializer.INSTANCE.deserialize(kVar, true);
            } else {
                throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
            }
            if (!z) {
                expectEndObject(kVar);
            }
            return mediaMetadataDeserialize;
        }
    }
}
