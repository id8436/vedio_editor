package com.adobe.customextractor.Util.Atom;

import android.util.Log;
import android.util.Pair;
import com.adobe.customextractor.Assertions;
import com.adobe.customextractor.Tracks.Track;
import com.adobe.customextractor.Tracks.TrackEncryptionBox;
import com.adobe.customextractor.Tracks.TrackSampleTable;
import com.adobe.customextractor.Util.Atom.Atom;
import com.adobe.customextractor.Util.CodecUtil.Ac3Util;
import com.adobe.customextractor.Util.CodecUtil.CodecSpecificDataUtil;
import com.adobe.customextractor.Util.CodecUtil.H264Util;
import com.adobe.customextractor.Util.Media.MediaFormat;
import com.adobe.customextractor.Util.ParsableByteArray;
import com.adobe.customextractor.Util.Utilities;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class AtomParsers {
    public static Track parseTrak(Atom.ContainerAtom containerAtom, Atom.LeafAtom leafAtom) {
        Atom.ContainerAtom containerAtomOfType = containerAtom.getContainerAtomOfType(Atom.TYPE_mdia);
        int hdlr = parseHdlr(containerAtomOfType.getLeafAtomOfType(Atom.TYPE_hdlr).data);
        if (hdlr != 1936684398 && hdlr != 1986618469 && hdlr != 1952807028 && hdlr != 1953325924) {
            return null;
        }
        Pair<Integer, Pair<Long, Integer>> tkhd = parseTkhd(containerAtom.getLeafAtomOfType(Atom.TYPE_tkhd).data);
        int iIntValue = ((Integer) tkhd.first).intValue();
        long jLongValue = ((Long) ((Pair) tkhd.second).first).longValue();
        int iIntValue2 = ((Integer) ((Pair) tkhd.second).second).intValue();
        Log.i("Parser", "Rotation " + iIntValue2);
        long jScaleLargeTimestamp = jLongValue != -1 ? Utilities.scaleLargeTimestamp(jLongValue, 1000000L, parseMvhd(leafAtom.data)) : -1L;
        Atom.ContainerAtom containerAtomOfType2 = containerAtomOfType.getContainerAtomOfType(Atom.TYPE_minf).getContainerAtomOfType(Atom.TYPE_stbl);
        long mdhd = parseMdhd(containerAtomOfType.getLeafAtomOfType(Atom.TYPE_mdhd).data);
        StsdDataHolder stsd = parseStsd(containerAtomOfType2.getLeafAtomOfType(Atom.TYPE_stsd).data, jScaleLargeTimestamp);
        if (stsd != null && stsd.mediaFormat != null) {
            stsd.mediaFormat.rotation = iIntValue2;
        }
        return new Track(iIntValue, hdlr, mdhd, jScaleLargeTimestamp, stsd.mediaFormat, stsd.trackEncryptionBoxes, stsd.nalUnitLengthFieldLength);
    }

    public static TrackSampleTable parseStbl(Track track, Atom.ContainerAtom containerAtom) {
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
        parsableByteArray3.skipBytes(4);
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
        if (parsableByteArray6 != null) {
            parsableByteArray6.setPosition(12);
            unsignedIntToInt15 = parsableByteArray6.readUnsignedIntToInt() - 1;
            unsignedIntToInt14 = parsableByteArray6.readUnsignedIntToInt();
            i10 = parsableByteArray6.readInt();
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
                    i5 = parsableByteArray6.readInt();
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
                    parsableByteArray3.skipBytes(4);
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
        Utilities.scaleLargeTimestampsInPlace(jArr, 1000000L, track.timescale);
        Assertions.checkArgument(i13 == 0);
        Assertions.checkArgument(i11 == 0);
        Assertions.checkArgument(i12 == 0);
        Assertions.checkArgument(i17 == 0);
        Assertions.checkArgument(i21 == 0);
        return new TrackSampleTable(jArr2, iArr, jArr, iArr2);
    }

    private static long parseMvhd(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(8);
        parsableByteArray.skipBytes(Atom.parseFullAtomVersion(parsableByteArray.readInt()) != 0 ? 16 : 8);
        return parsableByteArray.readUnsignedInt();
    }

    private static Pair<Integer, Pair<Long, Integer>> parseTkhd(ParsableByteArray parsableByteArray) {
        long unsignedInt;
        int i;
        parsableByteArray.setPosition(8);
        int fullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
        parsableByteArray.skipBytes(fullAtomVersion == 0 ? 8 : 16);
        int i2 = parsableByteArray.readInt();
        parsableByteArray.skipBytes(4);
        boolean z = true;
        int position = parsableByteArray.getPosition();
        int i3 = fullAtomVersion == 0 ? 4 : 8;
        int i4 = 0;
        while (true) {
            if (i4 >= i3) {
                break;
            }
            if (parsableByteArray.data[position + i4] != -1) {
                z = false;
                break;
            }
            i4++;
        }
        if (z) {
            parsableByteArray.skipBytes(i3);
            unsignedInt = -1;
        } else {
            unsignedInt = fullAtomVersion == 0 ? parsableByteArray.readUnsignedInt() : parsableByteArray.readUnsignedLongToLong();
        }
        parsableByteArray.skipBytes(16);
        int i5 = parsableByteArray.readInt();
        int i6 = parsableByteArray.readInt();
        if (i5 == 65536 && i6 == 0) {
            i = 0;
        } else if (i5 == 0 && i6 == 65536) {
            i = 90;
        } else if (i5 == -65536 && i6 == 0) {
            i = 180;
        } else if (i5 == 0 && i6 == -65536) {
            i = 270;
        } else {
            Log.e("AtomParser", "Could not find rotation");
            i = 0;
        }
        return Pair.create(Integer.valueOf(i2), Pair.create(Long.valueOf(unsignedInt), Integer.valueOf(i)));
    }

    private static int parseHdlr(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(16);
        return parsableByteArray.readInt();
    }

    private static long parseMdhd(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(8);
        parsableByteArray.skipBytes(Atom.parseFullAtomVersion(parsableByteArray.readInt()) != 0 ? 16 : 8);
        return parsableByteArray.readUnsignedInt();
    }

    private static StsdDataHolder parseStsd(ParsableByteArray parsableByteArray, long j) {
        parsableByteArray.setPosition(12);
        int i = parsableByteArray.readInt();
        StsdDataHolder stsdDataHolder = new StsdDataHolder(i);
        for (int i2 = 0; i2 < i; i2++) {
            int position = parsableByteArray.getPosition();
            int i3 = parsableByteArray.readInt();
            Assertions.checkArgument(i3 > 0, "childAtomSize should be positive");
            int i4 = parsableByteArray.readInt();
            if (i4 == Atom.TYPE_avc1 || i4 == Atom.TYPE_avc3 || i4 == Atom.TYPE_encv) {
                parseAvcFromParent(parsableByteArray, position, i3, j, stsdDataHolder, i2);
            } else if (i4 == Atom.TYPE_mp4a || i4 == Atom.TYPE_enca || i4 == Atom.TYPE_ac_3) {
                parseAudioSampleEntry(parsableByteArray, i4, position, i3, j, stsdDataHolder, i2);
            } else if (i4 == Atom.TYPE_TTML) {
                stsdDataHolder.mediaFormat = MediaFormat.createTtmlFormat();
            } else if (i4 == Atom.TYPE_mp4v) {
                stsdDataHolder.mediaFormat = parseMp4vFromParent(parsableByteArray, position, i3, j);
            }
            parsableByteArray.setPosition(position + i3);
        }
        return stsdDataHolder;
    }

    private static void parseAvcFromParent(ParsableByteArray parsableByteArray, int i, int i2, long j, StsdDataHolder stsdDataHolder, int i3) {
        parsableByteArray.setPosition(i + 8);
        parsableByteArray.skipBytes(24);
        int unsignedShort = parsableByteArray.readUnsignedShort();
        int unsignedShort2 = parsableByteArray.readUnsignedShort();
        float paspFromParent = 1.0f;
        parsableByteArray.skipBytes(50);
        List list = null;
        int position = parsableByteArray.getPosition();
        while (true) {
            int i4 = position;
            if (i4 - i >= i2) {
                break;
            }
            parsableByteArray.setPosition(i4);
            int position2 = parsableByteArray.getPosition();
            int i5 = parsableByteArray.readInt();
            if (i5 == 0 && parsableByteArray.getPosition() - i == i2) {
                break;
            }
            Assertions.checkArgument(i5 > 0, "childAtomSize should be positive");
            int i6 = parsableByteArray.readInt();
            if (i6 == Atom.TYPE_avcC) {
                Pair<List<byte[]>, Integer> avcCFromParent = parseAvcCFromParent(parsableByteArray, position2);
                List list2 = (List) avcCFromParent.first;
                stsdDataHolder.nalUnitLengthFieldLength = ((Integer) avcCFromParent.second).intValue();
                list = list2;
            } else if (i6 == Atom.TYPE_sinf) {
                stsdDataHolder.trackEncryptionBoxes[i3] = parseSinfFromParent(parsableByteArray, position2, i5);
            } else if (i6 == Atom.TYPE_pasp) {
                paspFromParent = parsePaspFromParent(parsableByteArray, position2);
            }
            position = i4 + i5;
        }
        stsdDataHolder.mediaFormat = MediaFormat.createVideoFormat("video/avc", -1, j, unsignedShort, unsignedShort2, 0, paspFromParent, list);
    }

    private static Pair<List<byte[]>, Integer> parseAvcCFromParent(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.setPosition(i + 8 + 4);
        int unsignedByte = (parsableByteArray.readUnsignedByte() & 3) + 1;
        if (unsignedByte == 3) {
            throw new IllegalStateException();
        }
        ArrayList arrayList = new ArrayList();
        int unsignedByte2 = parsableByteArray.readUnsignedByte() & 31;
        for (int i2 = 0; i2 < unsignedByte2; i2++) {
            arrayList.add(H264Util.parseChildNalUnit(parsableByteArray));
        }
        int unsignedByte3 = parsableByteArray.readUnsignedByte();
        for (int i3 = 0; i3 < unsignedByte3; i3++) {
            arrayList.add(H264Util.parseChildNalUnit(parsableByteArray));
        }
        return Pair.create(arrayList, Integer.valueOf(unsignedByte));
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
                parsableByteArray.skipBytes(4);
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
                parsableByteArray.skipBytes(4);
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

    private static MediaFormat parseMp4vFromParent(ParsableByteArray parsableByteArray, int i, int i2, long j) {
        parsableByteArray.setPosition(i + 8);
        parsableByteArray.skipBytes(24);
        int unsignedShort = parsableByteArray.readUnsignedShort();
        int unsignedShort2 = parsableByteArray.readUnsignedShort();
        parsableByteArray.skipBytes(50);
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
                return MediaFormat.createVideoFormat("video/mp4v-es", -1, j, unsignedShort, unsignedShort2, 0, arrayList);
            }
        }
    }

    private static void parseAudioSampleEntry(ParsableByteArray parsableByteArray, int i, int i2, int i3, long j, StsdDataHolder stsdDataHolder, int i4) {
        int i5;
        int i6;
        byte[] bArr;
        String str;
        byte[] bArr2;
        int iIntValue;
        int iIntValue2;
        parsableByteArray.setPosition(i2 + 8);
        parsableByteArray.skipBytes(16);
        int unsignedShort = parsableByteArray.readUnsignedShort();
        int unsignedShort2 = parsableByteArray.readUnsignedShort();
        parsableByteArray.skipBytes(4);
        int unsignedFixedPoint1616 = parsableByteArray.readUnsignedFixedPoint1616();
        byte[] bArr3 = null;
        int position = parsableByteArray.getPosition();
        int i7 = position;
        while (i7 - i2 < i3) {
            parsableByteArray.setPosition(i7);
            int position2 = parsableByteArray.getPosition();
            int i8 = parsableByteArray.readInt();
            Assertions.checkArgument(i8 > 0, "childAtomSize should be positive");
            int i9 = parsableByteArray.readInt();
            if (i == Atom.TYPE_mp4a || i == Atom.TYPE_enca) {
                if (i9 == Atom.TYPE_esds) {
                    byte[] esdsFromParent = parseEsdsFromParent(parsableByteArray, position2);
                    Pair<Integer, Integer> audioSpecificConfig = CodecSpecificDataUtil.parseAudioSpecificConfig(esdsFromParent);
                    unsignedFixedPoint1616 = ((Integer) audioSpecificConfig.first).intValue();
                    unsignedShort = ((Integer) audioSpecificConfig.second).intValue();
                    bArr3 = esdsFromParent;
                } else if (i9 == Atom.TYPE_sinf) {
                    stsdDataHolder.trackEncryptionBoxes[i4] = parseSinfFromParent(parsableByteArray, position2, i8);
                }
            } else if (i == Atom.TYPE_ac_3 && i9 == Atom.TYPE_dac3) {
                parsableByteArray.setPosition(position2 + 8);
                stsdDataHolder.mediaFormat = Ac3Util.parseAnnexFAc3Format(parsableByteArray);
                return;
            } else if (i == Atom.TYPE_ec_3 && i9 == Atom.TYPE_dec3) {
                parsableByteArray.setPosition(position2 + 8);
                stsdDataHolder.mediaFormat = Ac3Util.parseAnnexFEAc3Format(parsableByteArray);
                return;
            }
            i7 += i8;
        }
        if (i == Atom.TYPE_mp4a && bArr3 == null) {
            int i10 = position + 16;
            i6 = unsignedShort;
            int i11 = unsignedFixedPoint1616;
            bArr = bArr3;
            while (i10 - i2 < i3) {
                parsableByteArray.setPosition(i10);
                int position3 = parsableByteArray.getPosition();
                int i12 = parsableByteArray.readInt();
                Assertions.checkArgument(i12 > 0, "childAtomSize should be positive");
                if (parsableByteArray.readInt() == Atom.TYPE_wave) {
                    int i13 = position3 + 8;
                    while (i13 - position3 < i12) {
                        parsableByteArray.setPosition(i13);
                        int position4 = parsableByteArray.getPosition();
                        int i14 = parsableByteArray.readInt();
                        Assertions.checkArgument(i12 > 0, "childAtomSize should be positive");
                        if (parsableByteArray.readInt() == Atom.TYPE_esds) {
                            byte[] esdsFromParent2 = parseEsdsFromParent(parsableByteArray, position4);
                            Pair<Integer, Integer> audioSpecificConfig2 = CodecSpecificDataUtil.parseAudioSpecificConfig(esdsFromParent2);
                            iIntValue = ((Integer) audioSpecificConfig2.first).intValue();
                            iIntValue2 = ((Integer) audioSpecificConfig2.second).intValue();
                            bArr2 = esdsFromParent2;
                        } else {
                            bArr2 = bArr;
                            iIntValue = i11;
                            iIntValue2 = i6;
                        }
                        i13 += i14;
                        i6 = iIntValue2;
                        i11 = iIntValue;
                        bArr = bArr2;
                    }
                }
                i10 += i12;
            }
            i5 = i11;
        } else {
            i5 = unsignedFixedPoint1616;
            i6 = unsignedShort;
            bArr = bArr3;
        }
        if (i == Atom.TYPE_ac_3) {
            str = "audio/ac3";
        } else if (i == Atom.TYPE_ec_3) {
            str = "audio/eac3";
        } else {
            str = "audio/mp4a-latm";
        }
        stsdDataHolder.mediaFormat = MediaFormat.createAudioFormat(str, unsignedShort2, j, i6, i5, bArr == null ? null : Collections.singletonList(bArr));
    }

    private static byte[] parseEsdsFromParent(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.setPosition(i + 8 + 4);
        parsableByteArray.skipBytes(1);
        int unsignedByte = parsableByteArray.readUnsignedByte();
        while (unsignedByte > 127) {
            unsignedByte = parsableByteArray.readUnsignedByte();
        }
        parsableByteArray.skipBytes(2);
        int unsignedByte2 = parsableByteArray.readUnsignedByte();
        if ((unsignedByte2 & 128) != 0) {
            parsableByteArray.skipBytes(2);
        }
        if ((unsignedByte2 & 64) != 0) {
            parsableByteArray.skipBytes(parsableByteArray.readUnsignedShort());
        }
        if ((unsignedByte2 & 32) != 0) {
            parsableByteArray.skipBytes(2);
        }
        parsableByteArray.skipBytes(1);
        int unsignedByte3 = parsableByteArray.readUnsignedByte();
        while (unsignedByte3 > 127) {
            unsignedByte3 = parsableByteArray.readUnsignedByte();
        }
        parsableByteArray.skipBytes(13);
        parsableByteArray.skipBytes(1);
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

    private AtomParsers() {
    }

    final class StsdDataHolder {
        public MediaFormat mediaFormat;
        public int nalUnitLengthFieldLength = -1;
        public final TrackEncryptionBox[] trackEncryptionBoxes;

        public StsdDataHolder(int i) {
            this.trackEncryptionBoxes = new TrackEncryptionBox[i];
        }
    }
}
