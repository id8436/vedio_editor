package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.files.Dimensions;
import com.dropbox.core.v2.files.GpsCoordinates;
import com.dropbox.core.v2.files.MediaMetadata;
import java.io.IOException;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class PhotoMetadata extends MediaMetadata {
    public PhotoMetadata(Dimensions dimensions, GpsCoordinates gpsCoordinates, Date date) {
        super(dimensions, gpsCoordinates, date);
    }

    public PhotoMetadata() {
        this(null, null, null);
    }

    @Override // com.dropbox.core.v2.files.MediaMetadata
    public Dimensions getDimensions() {
        return this.dimensions;
    }

    @Override // com.dropbox.core.v2.files.MediaMetadata
    public GpsCoordinates getLocation() {
        return this.location;
    }

    @Override // com.dropbox.core.v2.files.MediaMetadata
    public Date getTimeTaken() {
        return this.timeTaken;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public class Builder extends MediaMetadata.Builder {
        protected Builder() {
        }

        @Override // com.dropbox.core.v2.files.MediaMetadata.Builder
        public Builder withDimensions(Dimensions dimensions) {
            super.withDimensions(dimensions);
            return this;
        }

        @Override // com.dropbox.core.v2.files.MediaMetadata.Builder
        public Builder withLocation(GpsCoordinates gpsCoordinates) {
            super.withLocation(gpsCoordinates);
            return this;
        }

        @Override // com.dropbox.core.v2.files.MediaMetadata.Builder
        public Builder withTimeTaken(Date date) {
            super.withTimeTaken(date);
            return this;
        }

        @Override // com.dropbox.core.v2.files.MediaMetadata.Builder
        public PhotoMetadata build() {
            return new PhotoMetadata(this.dimensions, this.location, this.timeTaken);
        }
    }

    @Override // com.dropbox.core.v2.files.MediaMetadata
    public int hashCode() {
        return getClass().toString().hashCode();
    }

    @Override // com.dropbox.core.v2.files.MediaMetadata
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            PhotoMetadata photoMetadata = (PhotoMetadata) obj;
            if ((this.dimensions == photoMetadata.dimensions || (this.dimensions != null && this.dimensions.equals(photoMetadata.dimensions))) && (this.location == photoMetadata.location || (this.location != null && this.location.equals(photoMetadata.location)))) {
                if (this.timeTaken == photoMetadata.timeTaken) {
                    return true;
                }
                if (this.timeTaken != null && this.timeTaken.equals(photoMetadata.timeTaken)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    @Override // com.dropbox.core.v2.files.MediaMetadata
    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    @Override // com.dropbox.core.v2.files.MediaMetadata
    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<PhotoMetadata> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(PhotoMetadata photoMetadata, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            writeTag("photo", gVar);
            if (photoMetadata.dimensions != null) {
                gVar.a("dimensions");
                StoneSerializers.nullableStruct(Dimensions.Serializer.INSTANCE).serialize(photoMetadata.dimensions, gVar);
            }
            if (photoMetadata.location != null) {
                gVar.a("location");
                StoneSerializers.nullableStruct(GpsCoordinates.Serializer.INSTANCE).serialize(photoMetadata.location, gVar);
            }
            if (photoMetadata.timeTaken != null) {
                gVar.a("time_taken");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(photoMetadata.timeTaken, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public PhotoMetadata deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Date date;
            GpsCoordinates gpsCoordinates;
            Dimensions dimensions;
            Date date2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
                if ("photo".equals(tag)) {
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
                PhotoMetadata photoMetadata = new PhotoMetadata(dimensions2, gpsCoordinates2, date2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return photoMetadata;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
