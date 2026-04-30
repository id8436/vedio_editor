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
import java.util.Arrays;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class VideoMetadata extends MediaMetadata {
    protected final Long duration;

    public VideoMetadata(Dimensions dimensions, GpsCoordinates gpsCoordinates, Date date, Long l) {
        super(dimensions, gpsCoordinates, date);
        this.duration = l;
    }

    public VideoMetadata() {
        this(null, null, null, null);
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

    public Long getDuration() {
        return this.duration;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public class Builder extends MediaMetadata.Builder {
        protected Long duration = null;

        protected Builder() {
        }

        public Builder withDuration(Long l) {
            this.duration = l;
            return this;
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
        public VideoMetadata build() {
            return new VideoMetadata(this.dimensions, this.location, this.timeTaken, this.duration);
        }
    }

    @Override // com.dropbox.core.v2.files.MediaMetadata
    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.duration}) + (super.hashCode() * 31);
    }

    @Override // com.dropbox.core.v2.files.MediaMetadata
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            VideoMetadata videoMetadata = (VideoMetadata) obj;
            if ((this.dimensions == videoMetadata.dimensions || (this.dimensions != null && this.dimensions.equals(videoMetadata.dimensions))) && ((this.location == videoMetadata.location || (this.location != null && this.location.equals(videoMetadata.location))) && (this.timeTaken == videoMetadata.timeTaken || (this.timeTaken != null && this.timeTaken.equals(videoMetadata.timeTaken))))) {
                if (this.duration == videoMetadata.duration) {
                    return true;
                }
                if (this.duration != null && this.duration.equals(videoMetadata.duration)) {
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

    class Serializer extends StructSerializer<VideoMetadata> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(VideoMetadata videoMetadata, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            writeTag("video", gVar);
            if (videoMetadata.dimensions != null) {
                gVar.a("dimensions");
                StoneSerializers.nullableStruct(Dimensions.Serializer.INSTANCE).serialize(videoMetadata.dimensions, gVar);
            }
            if (videoMetadata.location != null) {
                gVar.a("location");
                StoneSerializers.nullableStruct(GpsCoordinates.Serializer.INSTANCE).serialize(videoMetadata.location, gVar);
            }
            if (videoMetadata.timeTaken != null) {
                gVar.a("time_taken");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(videoMetadata.timeTaken, gVar);
            }
            if (videoMetadata.duration != null) {
                gVar.a("duration");
                StoneSerializers.nullable(StoneSerializers.uInt64()).serialize(videoMetadata.duration, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public VideoMetadata deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Long l;
            Date date;
            GpsCoordinates gpsCoordinates;
            Dimensions dimensions;
            Long l2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
                if ("video".equals(tag)) {
                    tag = null;
                }
            }
            if (tag == null) {
                Date date2 = null;
                GpsCoordinates gpsCoordinates2 = null;
                Dimensions dimensions2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("dimensions".equals(strD)) {
                        Long l3 = l2;
                        date = date2;
                        gpsCoordinates = gpsCoordinates2;
                        dimensions = (Dimensions) StoneSerializers.nullableStruct(Dimensions.Serializer.INSTANCE).deserialize(kVar);
                        l = l3;
                    } else if ("location".equals(strD)) {
                        dimensions = dimensions2;
                        Date date3 = date2;
                        gpsCoordinates = (GpsCoordinates) StoneSerializers.nullableStruct(GpsCoordinates.Serializer.INSTANCE).deserialize(kVar);
                        l = l2;
                        date = date3;
                    } else if ("time_taken".equals(strD)) {
                        gpsCoordinates = gpsCoordinates2;
                        dimensions = dimensions2;
                        Long l4 = l2;
                        date = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(kVar);
                        l = l4;
                    } else if ("duration".equals(strD)) {
                        l = (Long) StoneSerializers.nullable(StoneSerializers.uInt64()).deserialize(kVar);
                        date = date2;
                        gpsCoordinates = gpsCoordinates2;
                        dimensions = dimensions2;
                    } else {
                        skipValue(kVar);
                        l = l2;
                        date = date2;
                        gpsCoordinates = gpsCoordinates2;
                        dimensions = dimensions2;
                    }
                    dimensions2 = dimensions;
                    gpsCoordinates2 = gpsCoordinates;
                    date2 = date;
                    l2 = l;
                }
                VideoMetadata videoMetadata = new VideoMetadata(dimensions2, gpsCoordinates2, date2, l2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return videoMetadata;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
