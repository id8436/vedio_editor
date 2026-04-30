package com.google.android.exoplayer.mp4;

import android.util.Pair;
import com.adobe.premiereclip.project.sequence.Sequence;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.chunk.parser.mp4.TrackEncryptionBox;
import com.google.android.exoplayer.mp4.Atom;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.ParsableByteArray;
import com.google.android.exoplayer.util.Util;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class CommonMp4AtomParsers {
    private static final int[] AC3_CHANNEL_COUNTS = {2, 1, 2, 3, 3, 4, 4, 5};
    private static final int[] AC3_BITRATES = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, 320, 384, 448, 512, 576, Sequence.PLAYBACK_WIDTH};

    public static Track parseTrak(Atom.ContainerAtom containerAtom, Atom.LeafAtom leafAtom) {
        Atom.ContainerAtom containerAtomOfType = containerAtom.getContainerAtomOfType(Atom.TYPE_mdia);
        int hdlr = parseHdlr(containerAtomOfType.getLeafAtomOfType(Atom.TYPE_hdlr).data);
        Assertions.checkState(hdlr == 1936684398 || hdlr == 1986618469 || hdlr == 1952807028 || hdlr == 1953325924);
        Pair<Integer, Long> tkhd = parseTkhd(containerAtom.getLeafAtomOfType(Atom.TYPE_tkhd).data);
        int iIntValue = ((Integer) tkhd.first).intValue();
        long jLongValue = ((Long) tkhd.second).longValue();
        long jScaleLargeTimestamp = jLongValue != -1 ? Util.scaleLargeTimestamp(jLongValue, 1000000L, parseMvhd(leafAtom.data)) : -1L;
        Atom.ContainerAtom containerAtomOfType2 = containerAtomOfType.getContainerAtomOfType(Atom.TYPE_minf).getContainerAtomOfType(Atom.TYPE_stbl);
        long mdhd = parseMdhd(containerAtomOfType.getLeafAtomOfType(Atom.TYPE_mdhd).data);
        Pair<MediaFormat, TrackEncryptionBox[]> stsd = parseStsd(containerAtomOfType2.getLeafAtomOfType(Atom.TYPE_stsd).data);
        return new Track(iIntValue, hdlr, mdhd, jScaleLargeTimestamp, (MediaFormat) stsd.first, (TrackEncryptionBox[]) stsd.second);
    }

    public static Mp4TrackSampleTable parseStbl(Track track, Atom.ContainerAtom containerAtom) {
        boolean z;
        long unsignedLongToLong;
        int i;
        int unsignedIntToInt;
        int unsignedIntToInt2;
        int i2;
        int unsignedIntToInt3;
        int i3;
        int i4;
        int i5;
        int unsignedIntToInt4;
        int i6;
        int i7;
        int i8;
        int i9;
        ParsableByteArray parsableByteArray = containerAtom.getLeafAtomOfType(Atom.TYPE_stsz).data;
        Atom.LeafAtom leafAtomOfType = containerAtom.getLeafAtomOfType(Atom.TYPE_stco);
        if (leafAtomOfType == null) {
            leafAtomOfType = containerAtom.getLeafAtomOfType(Atom.TYPE_co64);
        }
        ParsableByteArray parsableByteArray2 = leafAtomOfType.data;
        ParsableByteArray parsableByteArray3 = containerAtom.getLeafAtomOfType(Atom.TYPE_stsc).data;
        ParsableByteArray parsableByteArray4 = containerAtom.getLeafAtomOfType(Atom.TYPE_stts).data;
        Atom.LeafAtom leafAtomOfType2 = containerAtom.getLeafAtomOfType(Atom.TYPE_stss);
        ParsableByteArray parsableByteArray5 = leafAtomOfType2 != null ? leafAtomOfType2.data : null;
        Atom.LeafAtom leafAtomOfType3 = containerAtom.getLeafAtomOfType(Atom.TYPE_ctts);
        ParsableByteArray parsableByteArray6 = leafAtomOfType3 != null ? leafAtomOfType3.data : null;
        parsableByteArray.setPosition(12);
        int unsignedIntToInt5 = parsableByteArray.readUnsignedIntToInt();
        int unsignedIntToInt6 = parsableByteArray.readUnsignedIntToInt();
        int[] iArr = new int[unsignedIntToInt6];
        long[] jArr = new long[unsignedIntToInt6];
        long[] jArr2 = new long[unsignedIntToInt6];
        int[] iArr2 = new int[unsignedIntToInt6];
        parsableByteArray2.setPosition(12);
        int unsignedIntToInt7 = parsableByteArray2.readUnsignedIntToInt();
        parsableByteArray3.setPosition(12);
        int unsignedIntToInt8 = parsableByteArray3.readUnsignedIntToInt() - 1;
        Assertions.checkState(parsableByteArray3.readInt() == 1, "stsc first chunk must be 1");
        int unsignedIntToInt9 = parsableByteArray3.readUnsignedIntToInt();
        parsableByteArray3.skip(4);
        int unsignedIntToInt10 = -1;
        if (unsignedIntToInt8 > 0) {
            unsignedIntToInt10 = parsableByteArray3.readUnsignedIntToInt() - 1;
        }
        parsableByteArray4.setPosition(12);
        int unsignedIntToInt11 = parsableByteArray4.readUnsignedIntToInt() - 1;
        int unsignedIntToInt12 = parsableByteArray4.readUnsignedIntToInt();
        int unsignedIntToInt13 = parsableByteArray4.readUnsignedIntToInt();
        int unsignedIntToInt14 = 0;
        int unsignedIntToInt15 = 0;
        int i10 = 0;
        if (parsableByteArray6 == null) {
            z = false;
        } else {
            parsableByteArray6.setPosition(8);
            boolean z2 = Mp4Util.parseFullAtomVersion(parsableByteArray6.readInt()) == 1;
            unsignedIntToInt15 = parsableByteArray6.readUnsignedIntToInt() - 1;
            unsignedIntToInt14 = parsableByteArray6.readUnsignedIntToInt();
            i10 = z2 ? parsableByteArray6.readInt() : parsableByteArray6.readUnsignedIntToInt();
            z = z2;
        }
        int unsignedIntToInt16 = -1;
        int unsignedIntToInt17 = 0;
        if (parsableByteArray5 != null) {
            parsableByteArray5.setPosition(12);
            unsignedIntToInt17 = parsableByteArray5.readUnsignedIntToInt();
            unsignedIntToInt16 = parsableByteArray5.readUnsignedIntToInt() - 1;
        }
        if (leafAtomOfType.type == Atom.TYPE_stco) {
            unsignedLongToLong = parsableByteArray2.readUnsignedInt();
        } else {
            unsignedLongToLong = parsableByteArray2.readUnsignedLongToLong();
        }
        long j = 0;
        int i11 = unsignedIntToInt12;
        int i12 = unsignedIntToInt9;
        int i13 = unsignedIntToInt17;
        int i14 = unsignedIntToInt9;
        int i15 = unsignedIntToInt8;
        int i16 = 0;
        int unsignedIntToInt18 = unsignedIntToInt10;
        int i17 = unsignedIntToInt11;
        int i18 = unsignedIntToInt16;
        long unsignedLongToLong2 = unsignedLongToLong;
        int i19 = 0;
        int i20 = i10;
        int i21 = unsignedIntToInt15;
        int i22 = unsignedIntToInt14;
        int i23 = unsignedIntToInt13;
        while (i16 < unsignedIntToInt6) {
            jArr2[i16] = unsignedLongToLong2;
            iArr[i16] = unsignedIntToInt5 == 0 ? parsableByteArray.readUnsignedIntToInt() : unsignedIntToInt5;
            jArr[i16] = ((long) i20) + j;
            iArr2[i16] = parsableByteArray5 == null ? 1 : 0;
            if (i16 == i18) {
                iArr2[i16] = 1;
                int i24 = i13 - 1;
                if (i24 > 0) {
                    i = i24;
                    unsignedIntToInt = parsableByteArray5.readUnsignedIntToInt() - 1;
                } else {
                    i = i24;
                    unsignedIntToInt = i18;
                }
            } else {
                i = i13;
                unsignedIntToInt = i18;
            }
            j += (long) i23;
            int i25 = i11 - 1;
            if (i25 != 0 || i17 <= 0) {
                unsignedIntToInt2 = i25;
                i2 = i17;
                unsignedIntToInt3 = i23;
            } else {
                unsignedIntToInt2 = parsableByteArray4.readUnsignedIntToInt();
                i2 = i17 - 1;
                unsignedIntToInt3 = parsableByteArray4.readUnsignedIntToInt();
            }
            if (parsableByteArray6 != null) {
                int i26 = i22 - 1;
                if (i26 != 0 || i21 <= 0) {
                    i4 = i21;
                    i3 = i26;
                    i5 = i20;
                } else {
                    int unsignedIntToInt19 = parsableByteArray6.readUnsignedIntToInt();
                    int i27 = i21 - 1;
                    i5 = z ? parsableByteArray6.readInt() : parsableByteArray6.readUnsignedIntToInt();
                    i3 = unsignedIntToInt19;
                    i4 = i27;
                }
            } else {
                i3 = i22;
                i4 = i21;
                i5 = i20;
            }
            int i28 = i12 - 1;
            if (i28 == 0) {
                int i29 = i19 + 1;
                if (i29 < unsignedIntToInt7) {
                    if (leafAtomOfType.type == Atom.TYPE_stco) {
                        unsignedLongToLong2 = parsableByteArray2.readUnsignedInt();
                    } else {
                        unsignedLongToLong2 = parsableByteArray2.readUnsignedLongToLong();
                    }
                }
                if (i29 == unsignedIntToInt18) {
                    unsignedIntToInt4 = parsableByteArray3.readUnsignedIntToInt();
                    parsableByteArray3.skip(4);
                    i9 = i15 - 1;
                    if (i9 > 0) {
                        unsignedIntToInt18 = parsableByteArray3.readUnsignedIntToInt() - 1;
                    }
                } else {
                    unsignedIntToInt4 = i14;
                    i9 = i15;
                }
                if (i29 < unsignedIntToInt7) {
                    i6 = i29;
                    i7 = unsignedIntToInt18;
                    i8 = unsignedIntToInt4;
                } else {
                    i6 = i29;
                    i7 = unsignedIntToInt18;
                    i8 = unsignedIntToInt4;
                    unsignedIntToInt4 = i28;
                }
            } else {
                unsignedLongToLong2 += (long) iArr[i16];
                unsignedIntToInt4 = i28;
                i6 = i19;
                i7 = unsignedIntToInt18;
                i8 = i14;
                i9 = i15;
            }
            i16++;
            i11 = unsignedIntToInt2;
            i12 = unsignedIntToInt4;
            i13 = i;
            i15 = i9;
            i14 = i8;
            unsignedIntToInt18 = i7;
            i19 = i6;
            i20 = i5;
            i21 = i4;
            i22 = i3;
            i23 = unsignedIntToInt3;
            i17 = i2;
            i18 = unsignedIntToInt;
        }
        Util.scaleLargeTimestampsInPlace(jArr, 1000000L, track.timescale);
        Assertions.checkArgument(i13 == 0);
        Assertions.checkArgument(i11 == 0);
        Assertions.checkArgument(i12 == 0);
        Assertions.checkArgument(i17 == 0);
        Assertions.checkArgument(i21 == 0);
        return new Mp4TrackSampleTable(jArr2, iArr, jArr, iArr2);
    }

    private static long parseMvhd(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(8);
        parsableByteArray.skip(Mp4Util.parseFullAtomVersion(parsableByteArray.readInt()) != 0 ? 16 : 8);
        return parsableByteArray.readUnsignedInt();
    }

    private static Pair<Integer, Long> parseTkhd(ParsableByteArray parsableByteArray) {
        long unsignedInt;
        parsableByteArray.setPosition(8);
        int fullAtomVersion = Mp4Util.parseFullAtomVersion(parsableByteArray.readInt());
        parsableByteArray.skip(fullAtomVersion == 0 ? 8 : 16);
        int i = parsableByteArray.readInt();
        parsableByteArray.skip(4);
        boolean z = true;
        int position = parsableByteArray.getPosition();
        int i2 = fullAtomVersion == 0 ? 4 : 8;
        int i3 = 0;
        while (true) {
            if (i3 >= i2) {
                break;
            }
            if (parsableByteArray.data[position + i3] != -1) {
                z = false;
                break;
            }
            i3++;
        }
        if (z) {
            parsableByteArray.skip(i2);
            unsignedInt = -1;
        } else {
            unsignedInt = fullAtomVersion == 0 ? parsableByteArray.readUnsignedInt() : parsableByteArray.readUnsignedLongToLong();
        }
        return Pair.create(Integer.valueOf(i), Long.valueOf(unsignedInt));
    }

    private static int parseHdlr(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(16);
        return parsableByteArray.readInt();
    }

    private static long parseMdhd(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(8);
        parsableByteArray.skip(Mp4Util.parseFullAtomVersion(parsableByteArray.readInt()) != 0 ? 16 : 8);
        return parsableByteArray.readUnsignedInt();
    }

    private static Pair<MediaFormat, TrackEncryptionBox[]> parseStsd(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(12);
        int i = parsableByteArray.readInt();
        MediaFormat mp4vFromParent = null;
        TrackEncryptionBox[] trackEncryptionBoxArr = new TrackEncryptionBox[i];
        for (int i2 = 0; i2 < i; i2++) {
            int position = parsableByteArray.getPosition();
            int i3 = parsableByteArray.readInt();
            Assertions.checkArgument(i3 > 0, "childAtomSize should be positive");
            int i4 = parsableByteArray.readInt();
            if (i4 == Atom.TYPE_avc1 || i4 == Atom.TYPE_avc3 || i4 == Atom.TYPE_encv) {
                Pair<MediaFormat, TrackEncryptionBox> avcFromParent = parseAvcFromParent(parsableByteArray, position, i3);
                mp4vFromParent = (MediaFormat) avcFromParent.first;
                trackEncryptionBoxArr[i2] = (TrackEncryptionBox) avcFromParent.second;
            } else if (i4 == Atom.TYPE_mp4a || i4 == Atom.TYPE_enca || i4 == Atom.TYPE_ac_3) {
                Pair<MediaFormat, TrackEncryptionBox> audioSampleEntry = parseAudioSampleEntry(parsableByteArray, i4, position, i3);
                mp4vFromParent = (MediaFormat) audioSampleEntry.first;
                trackEncryptionBoxArr[i2] = (TrackEncryptionBox) audioSampleEntry.second;
            } else if (i4 == Atom.TYPE_TTML) {
                mp4vFromParent = MediaFormat.createTtmlFormat();
            } else if (i4 == Atom.TYPE_mp4v) {
                mp4vFromParent = parseMp4vFromParent(parsableByteArray, position, i3);
            }
            parsableByteArray.setPosition(position + i3);
        }
        return Pair.create(mp4vFromParent, trackEncryptionBoxArr);
    }

    private static Pair<MediaFormat, TrackEncryptionBox> parseAvcFromParent(ParsableByteArray parsableByteArray, int i, int i2) {
        TrackEncryptionBox sinfFromParent;
        TrackEncryptionBox trackEncryptionBox = null;
        parsableByteArray.setPosition(i + 8);
        parsableByteArray.skip(24);
        int unsignedShort = parsableByteArray.readUnsignedShort();
        int unsignedShort2 = parsableByteArray.readUnsignedShort();
        float paspFromParent = 1.0f;
        parsableByteArray.skip(50);
        int position = parsableByteArray.getPosition();
        List<byte[]> avcCFromParent = null;
        while (position - i < i2) {
            parsableByteArray.setPosition(position);
            int position2 = parsableByteArray.getPosition();
            int i3 = parsableByteArray.readInt();
            if (i3 == 0 && parsableByteArray.getPosition() - i == i2) {
                break;
            }
            Assertions.checkArgument(i3 > 0, "childAtomSize should be positive");
            int i4 = parsableByteArray.readInt();
            if (i4 == Atom.TYPE_avcC) {
                avcCFromParent = parseAvcCFromParent(parsableByteArray, position2);
                sinfFromParent = trackEncryptionBox;
            } else if (i4 == Atom.TYPE_sinf) {
                sinfFromParent = parseSinfFromParent(parsableByteArray, position2, i3);
            } else if (i4 == Atom.TYPE_pasp) {
                paspFromParent = parsePaspFromParent(parsableByteArray, position2);
                sinfFromParent = trackEncryptionBox;
            } else {
                sinfFromParent = trackEncryptionBox;
            }
            position += i3;
            trackEncryptionBox = sinfFromParent;
        }
        return Pair.create(MediaFormat.createVideoFormat("video/avc", -1, unsignedShort, unsignedShort2, paspFromParent, avcCFromParent), trackEncryptionBox);
    }

    private static List<byte[]> parseAvcCFromParent(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.setPosition(i + 8 + 4);
        if ((parsableByteArray.readUnsignedByte() & 3) + 1 != 4) {
            throw new IllegalStateException();
        }
        ArrayList arrayList = new ArrayList();
        int unsignedByte = parsableByteArray.readUnsignedByte() & 31;
        for (int i2 = 0; i2 < unsignedByte; i2++) {
            arrayList.add(Mp4Util.parseChildNalUnit(parsableByteArray));
        }
        int unsignedByte2 = parsableByteArray.readUnsignedByte();
        for (int i3 = 0; i3 < unsignedByte2; i3++) {
            arrayList.add(Mp4Util.parseChildNalUnit(parsableByteArray));
        }
        return arrayList;
    }

    private static TrackEncryptionBox parseSinfFromParent(ParsableByteArray parsableByteArray, int i, int i2) {
        int i3 = i + 8;
        TrackEncryptionBox schiFromParent = null;
        while (i3 - i < i2) {
            parsableByteArray.setPosition(i3);
            int i4 = parsableByteArray.readInt();
            int i5 = parsableByteArray.readInt();
            if (i5 == Atom.TYPE_frma) {
                parsableByteArray.readInt();
            } else if (i5 == Atom.TYPE_schm) {
                parsableByteArray.skip(4);
                parsableByteArray.readInt();
                parsableByteArray.readInt();
            } else if (i5 == Atom.TYPE_schi) {
                schiFromParent = parseSchiFromParent(parsableByteArray, i3, i4);
            }
            i3 += i4;
        }
        return schiFromParent;
    }

    private static float parsePaspFromParent(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.setPosition(i + 8);
        return parsableByteArray.readUnsignedIntToInt() / parsableByteArray.readUnsignedIntToInt();
    }

    private static TrackEncryptionBox parseSchiFromParent(ParsableByteArray parsableByteArray, int i, int i2) {
        int i3 = i + 8;
        while (i3 - i < i2) {
            parsableByteArray.setPosition(i3);
            int i4 = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == Atom.TYPE_tenc) {
                parsableByteArray.skip(4);
                int i5 = parsableByteArray.readInt();
                boolean z = (i5 >> 8) == 1;
                byte[] bArr = new byte[16];
                parsableByteArray.readBytes(bArr, 0, bArr.length);
                return new TrackEncryptionBox(z, i5 & 255, bArr);
            }
            i3 += i4;
        }
        return null;
    }

    private static MediaFormat parseMp4vFromParent(ParsableByteArray parsableByteArray, int i, int i2) {
        parsableByteArray.setPosition(i + 8);
        parsableByteArray.skip(24);
        int unsignedShort = parsableByteArray.readUnsignedShort();
        int unsignedShort2 = parsableByteArray.readUnsignedShort();
        parsableByteArray.skip(50);
        ArrayList arrayList = new ArrayList(1);
        int position = parsableByteArray.getPosition();
        while (true) {
            int i3 = position;
            if (i3 - i < i2) {
                parsableByteArray.setPosition(i3);
                int position2 = parsableByteArray.getPosition();
                int i4 = parsableByteArray.readInt();
                Assertions.checkArgument(i4 > 0, "childAtomSize should be positive");
                if (parsableByteArray.readInt() == Atom.TYPE_esds) {
                    arrayList.add(parseEsdsFromParent(parsableByteArray, position2));
                }
                position = i3 + i4;
            } else {
                return MediaFormat.createVideoFormat("video/mp4v-es", -1, unsignedShort, unsignedShort2, arrayList);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00c8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.util.Pair<com.google.android.exoplayer.MediaFormat, com.google.android.exoplayer.chunk.parser.mp4.TrackEncryptionBox> parseAudioSampleEntry(com.google.android.exoplayer.util.ParsableByteArray r12, int r13, int r14, int r15) {
        /*
            Method dump skipped, instruction units count: 205
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer.mp4.CommonMp4AtomParsers.parseAudioSampleEntry(com.google.android.exoplayer.util.ParsableByteArray, int, int, int):android.util.Pair");
    }

    private static byte[] parseEsdsFromParent(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.setPosition(i + 8 + 4);
        parsableByteArray.skip(1);
        int unsignedByte = parsableByteArray.readUnsignedByte();
        while (unsignedByte > 127) {
            unsignedByte = parsableByteArray.readUnsignedByte();
        }
        parsableByteArray.skip(2);
        int unsignedByte2 = parsableByteArray.readUnsignedByte();
        if ((unsignedByte2 & 128) != 0) {
            parsableByteArray.skip(2);
        }
        if ((unsignedByte2 & 64) != 0) {
            parsableByteArray.skip(parsableByteArray.readUnsignedShort());
        }
        if ((unsignedByte2 & 32) != 0) {
            parsableByteArray.skip(2);
        }
        parsableByteArray.skip(1);
        int unsignedByte3 = parsableByteArray.readUnsignedByte();
        while (unsignedByte3 > 127) {
            unsignedByte3 = parsableByteArray.readUnsignedByte();
        }
        parsableByteArray.skip(13);
        parsableByteArray.skip(1);
        int unsignedByte4 = parsableByteArray.readUnsignedByte();
        int i2 = unsignedByte4 & 127;
        while (unsignedByte4 > 127) {
            unsignedByte4 = parsableByteArray.readUnsignedByte();
            i2 = (i2 << 8) | (unsignedByte4 & 127);
        }
        byte[] bArr = new byte[i2];
        parsableByteArray.readBytes(bArr, 0, i2);
        return bArr;
    }

    private static Ac3Format parseAc3SpecificBoxFromParent(ParsableByteArray parsableByteArray, int i) {
        int i2;
        parsableByteArray.setPosition(i + 8);
        switch ((parsableByteArray.readUnsignedByte() & 192) >> 6) {
            case 0:
                i2 = 48000;
                break;
            case 1:
                i2 = 44100;
                break;
            case 2:
                i2 = 32000;
                break;
            default:
                return null;
        }
        int unsignedByte = parsableByteArray.readUnsignedByte();
        int i3 = AC3_CHANNEL_COUNTS[(unsignedByte & 56) >> 3];
        if ((unsignedByte & 4) != 0) {
            i3++;
        }
        return new Ac3Format(i3, i2, AC3_BITRATES[((unsignedByte & 3) << 3) + (parsableByteArray.readUnsignedByte() >> 5)]);
    }

    private static int parseEc3SpecificBoxFromParent(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.setPosition(i + 8);
        return 0;
    }

    private CommonMp4AtomParsers() {
    }

    final class Ac3Format {
        public final int bitrate;
        public final int channelCount;
        public final int sampleRate;

        public Ac3Format(int i, int i2, int i3) {
            this.channelCount = i;
            this.sampleRate = i2;
            this.bitrate = i3;
        }
    }
}
