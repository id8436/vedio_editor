package com.google.android.exoplayer.chunk.parser.mp4;

import android.annotation.SuppressLint;
import android.support.v7.widget.ActivityChooserView;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.ParserException;
import com.google.android.exoplayer.SampleHolder;
import com.google.android.exoplayer.chunk.parser.Extractor;
import com.google.android.exoplayer.chunk.parser.SegmentIndex;
import com.google.android.exoplayer.mp4.Atom;
import com.google.android.exoplayer.mp4.CommonMp4AtomParsers;
import com.google.android.exoplayer.mp4.Mp4Util;
import com.google.android.exoplayer.mp4.Track;
import com.google.android.exoplayer.upstream.NonBlockingInputStream;
import com.google.android.exoplayer.util.ParsableByteArray;
import com.google.android.exoplayer.util.Util;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Stack;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public final class FragmentedMp4Extractor implements Extractor {
    private static final Set<Integer> CONTAINER_TYPES;
    private static final Set<Integer> PARSED_ATOMS;
    private static final byte[] PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};
    private static final int READ_TERMINATING_RESULTS = 39;
    private static final int STATE_READING_ATOM_HEADER = 0;
    private static final int STATE_READING_ATOM_PAYLOAD = 1;
    private static final int STATE_READING_ENCRYPTION_DATA = 2;
    private static final int STATE_READING_SAMPLE = 3;
    public static final int WORKAROUND_EVERY_VIDEO_FRAME_IS_SYNC_FRAME = 1;
    private int atomBytesRead;
    private ParsableByteArray atomData;
    private final ParsableByteArray atomHeader;
    private int atomSize;
    private int atomType;
    private final Stack<Atom.ContainerAtom> containerAtoms;
    private final byte[] extendedTypeScratch;
    private DefaultSampleValues extendsDefaults;
    private final TrackFragment fragmentRun;
    private int lastSyncSampleIndex;
    private int parserState;
    private int pendingSeekSyncSampleIndex;
    private int pendingSeekTimeMs;
    private final HashMap<UUID, byte[]> psshData;
    private int rootAtomBytesRead;
    private int sampleIndex;
    private SegmentIndex segmentIndex;
    private Track track;
    private final int workaroundFlags;

    static {
        HashSet hashSet = new HashSet();
        hashSet.add(Integer.valueOf(Atom.TYPE_avc1));
        hashSet.add(Integer.valueOf(Atom.TYPE_avc3));
        hashSet.add(Integer.valueOf(Atom.TYPE_esds));
        hashSet.add(Integer.valueOf(Atom.TYPE_hdlr));
        hashSet.add(Integer.valueOf(Atom.TYPE_mdat));
        hashSet.add(Integer.valueOf(Atom.TYPE_mdhd));
        hashSet.add(Integer.valueOf(Atom.TYPE_moof));
        hashSet.add(Integer.valueOf(Atom.TYPE_moov));
        hashSet.add(Integer.valueOf(Atom.TYPE_mp4a));
        hashSet.add(Integer.valueOf(Atom.TYPE_mvhd));
        hashSet.add(Integer.valueOf(Atom.TYPE_sidx));
        hashSet.add(Integer.valueOf(Atom.TYPE_stsd));
        hashSet.add(Integer.valueOf(Atom.TYPE_tfdt));
        hashSet.add(Integer.valueOf(Atom.TYPE_tfhd));
        hashSet.add(Integer.valueOf(Atom.TYPE_tkhd));
        hashSet.add(Integer.valueOf(Atom.TYPE_traf));
        hashSet.add(Integer.valueOf(Atom.TYPE_trak));
        hashSet.add(Integer.valueOf(Atom.TYPE_trex));
        hashSet.add(Integer.valueOf(Atom.TYPE_trun));
        hashSet.add(Integer.valueOf(Atom.TYPE_mvex));
        hashSet.add(Integer.valueOf(Atom.TYPE_mdia));
        hashSet.add(Integer.valueOf(Atom.TYPE_minf));
        hashSet.add(Integer.valueOf(Atom.TYPE_stbl));
        hashSet.add(Integer.valueOf(Atom.TYPE_pssh));
        hashSet.add(Integer.valueOf(Atom.TYPE_saiz));
        hashSet.add(Integer.valueOf(Atom.TYPE_uuid));
        hashSet.add(Integer.valueOf(Atom.TYPE_senc));
        hashSet.add(Integer.valueOf(Atom.TYPE_pasp));
        PARSED_ATOMS = Collections.unmodifiableSet(hashSet);
        HashSet hashSet2 = new HashSet();
        hashSet2.add(Integer.valueOf(Atom.TYPE_moov));
        hashSet2.add(Integer.valueOf(Atom.TYPE_trak));
        hashSet2.add(Integer.valueOf(Atom.TYPE_mdia));
        hashSet2.add(Integer.valueOf(Atom.TYPE_minf));
        hashSet2.add(Integer.valueOf(Atom.TYPE_stbl));
        hashSet2.add(Integer.valueOf(Atom.TYPE_avcC));
        hashSet2.add(Integer.valueOf(Atom.TYPE_moof));
        hashSet2.add(Integer.valueOf(Atom.TYPE_traf));
        hashSet2.add(Integer.valueOf(Atom.TYPE_mvex));
        CONTAINER_TYPES = Collections.unmodifiableSet(hashSet2);
    }

    public FragmentedMp4Extractor() {
        this(0);
    }

    public FragmentedMp4Extractor(int i) {
        this.workaroundFlags = i;
        this.parserState = 0;
        this.atomHeader = new ParsableByteArray(8);
        this.extendedTypeScratch = new byte[16];
        this.containerAtoms = new Stack<>();
        this.fragmentRun = new TrackFragment();
        this.psshData = new HashMap<>();
    }

    public void setTrack(Track track) {
        this.extendsDefaults = new DefaultSampleValues(0, 0, 0, 0);
        this.track = track;
    }

    @Override // com.google.android.exoplayer.chunk.parser.Extractor
    public Map<UUID, byte[]> getPsshInfo() {
        if (this.psshData.isEmpty()) {
            return null;
        }
        return this.psshData;
    }

    @Override // com.google.android.exoplayer.chunk.parser.Extractor
    public SegmentIndex getIndex() {
        return this.segmentIndex;
    }

    @Override // com.google.android.exoplayer.chunk.parser.Extractor
    public boolean hasRelativeIndexOffsets() {
        return true;
    }

    @Override // com.google.android.exoplayer.chunk.parser.Extractor
    public MediaFormat getFormat() {
        if (this.track == null) {
            return null;
        }
        return this.track.mediaFormat;
    }

    @Override // com.google.android.exoplayer.chunk.parser.Extractor
    public long getDurationUs() {
        if (this.track == null) {
            return -1L;
        }
        return this.track.durationUs;
    }

    @Override // com.google.android.exoplayer.chunk.parser.Extractor
    public int read(NonBlockingInputStream nonBlockingInputStream, SampleHolder sampleHolder) throws ParserException {
        int orSkipSample = 0;
        while ((orSkipSample & 39) == 0) {
            try {
                switch (this.parserState) {
                    case 0:
                        orSkipSample |= readAtomHeader(nonBlockingInputStream);
                        continue;
                    case 1:
                        orSkipSample |= readAtomPayload(nonBlockingInputStream);
                        continue;
                    case 2:
                        orSkipSample |= readEncryptionData(nonBlockingInputStream);
                        continue;
                    default:
                        orSkipSample |= readOrSkipSample(nonBlockingInputStream, sampleHolder);
                        continue;
                }
            } catch (Exception e2) {
                throw new ParserException(e2);
            }
            throw new ParserException(e2);
        }
        return orSkipSample;
    }

    @Override // com.google.android.exoplayer.chunk.parser.Extractor
    public boolean seekTo(long j, boolean z) {
        this.pendingSeekTimeMs = (int) (j / 1000);
        if (z && this.fragmentRun != null && this.fragmentRun.length > 0 && this.pendingSeekTimeMs >= this.fragmentRun.getSamplePresentationTime(0) && this.pendingSeekTimeMs <= this.fragmentRun.getSamplePresentationTime(this.fragmentRun.length - 1)) {
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < this.fragmentRun.length; i3++) {
                if (this.fragmentRun.getSamplePresentationTime(i3) <= this.pendingSeekTimeMs) {
                    if (this.fragmentRun.sampleIsSyncFrameTable[i3]) {
                        i = i3;
                    }
                    i2 = i3;
                }
            }
            if (i == this.lastSyncSampleIndex && i2 >= this.sampleIndex) {
                this.pendingSeekTimeMs = 0;
                return false;
            }
        }
        this.containerAtoms.clear();
        enterState(0);
        return true;
    }

    private void enterState(int i) {
        switch (i) {
            case 0:
                this.atomBytesRead = 0;
                if (this.containerAtoms.isEmpty()) {
                    this.rootAtomBytesRead = 0;
                }
                break;
        }
        this.parserState = i;
    }

    private int readAtomHeader(NonBlockingInputStream nonBlockingInputStream) {
        int i = nonBlockingInputStream.read(this.atomHeader.data, this.atomBytesRead, 8 - this.atomBytesRead);
        if (i == -1) {
            return 2;
        }
        this.rootAtomBytesRead += i;
        this.atomBytesRead = i + this.atomBytesRead;
        if (this.atomBytesRead != 8) {
            return 1;
        }
        this.atomHeader.setPosition(0);
        this.atomSize = this.atomHeader.readInt();
        this.atomType = this.atomHeader.readInt();
        if (this.atomType == Atom.TYPE_mdat) {
            if (this.fragmentRun.sampleEncryptionDataNeedsFill) {
                enterState(2);
            } else {
                enterState(3);
            }
            return 0;
        }
        Integer numValueOf = Integer.valueOf(this.atomType);
        if (PARSED_ATOMS.contains(numValueOf)) {
            if (CONTAINER_TYPES.contains(numValueOf)) {
                enterState(0);
                this.containerAtoms.add(new Atom.ContainerAtom(this.atomType, (this.rootAtomBytesRead + this.atomSize) - 8));
            } else {
                this.atomData = new ParsableByteArray(this.atomSize);
                System.arraycopy(this.atomHeader.data, 0, this.atomData.data, 0, 8);
                enterState(1);
            }
        } else {
            this.atomData = null;
            enterState(1);
        }
        return 0;
    }

    private int readAtomPayload(NonBlockingInputStream nonBlockingInputStream) {
        int iSkip;
        if (this.atomData != null) {
            iSkip = nonBlockingInputStream.read(this.atomData.data, this.atomBytesRead, this.atomSize - this.atomBytesRead);
        } else {
            iSkip = nonBlockingInputStream.skip(this.atomSize - this.atomBytesRead);
        }
        if (iSkip == -1) {
            return 2;
        }
        this.rootAtomBytesRead += iSkip;
        this.atomBytesRead = iSkip + this.atomBytesRead;
        if (this.atomBytesRead != this.atomSize) {
            return 1;
        }
        int iOnLeafAtomRead = this.atomData != null ? onLeafAtomRead(new Atom.LeafAtom(this.atomType, this.atomData)) | 0 : 0;
        while (!this.containerAtoms.isEmpty() && this.containerAtoms.peek().endByteOffset == this.rootAtomBytesRead) {
            iOnLeafAtomRead = onContainerAtomRead(this.containerAtoms.pop()) | iOnLeafAtomRead;
        }
        enterState(0);
        return iOnLeafAtomRead;
    }

    private int onLeafAtomRead(Atom.LeafAtom leafAtom) {
        if (!this.containerAtoms.isEmpty()) {
            this.containerAtoms.peek().add(leafAtom);
        } else if (leafAtom.type == Atom.TYPE_sidx) {
            this.segmentIndex = parseSidx(leafAtom.data);
            return 16;
        }
        return 0;
    }

    private int onContainerAtomRead(Atom.ContainerAtom containerAtom) {
        if (containerAtom.type == Atom.TYPE_moov) {
            onMoovContainerAtomRead(containerAtom);
            return 8;
        }
        if (containerAtom.type == Atom.TYPE_moof) {
            onMoofContainerAtomRead(containerAtom);
        } else if (!this.containerAtoms.isEmpty()) {
            this.containerAtoms.peek().add(containerAtom);
        }
        return 0;
    }

    private void onMoovContainerAtomRead(Atom.ContainerAtom containerAtom) {
        List<Atom.LeafAtom> list = containerAtom.leafChildren;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Atom.LeafAtom leafAtom = list.get(i);
            if (leafAtom.type == Atom.TYPE_pssh) {
                ParsableByteArray parsableByteArray = leafAtom.data;
                parsableByteArray.setPosition(12);
                UUID uuid = new UUID(parsableByteArray.readLong(), parsableByteArray.readLong());
                int i2 = parsableByteArray.readInt();
                byte[] bArr = new byte[i2];
                parsableByteArray.readBytes(bArr, 0, i2);
                this.psshData.put(uuid, bArr);
            }
        }
        this.extendsDefaults = parseTrex(containerAtom.getContainerAtomOfType(Atom.TYPE_mvex).getLeafAtomOfType(Atom.TYPE_trex).data);
        this.track = CommonMp4AtomParsers.parseTrak(containerAtom.getContainerAtomOfType(Atom.TYPE_trak), containerAtom.getLeafAtomOfType(Atom.TYPE_mvhd));
    }

    private void onMoofContainerAtomRead(Atom.ContainerAtom containerAtom) {
        this.fragmentRun.reset();
        parseMoof(this.track, this.extendsDefaults, containerAtom, this.fragmentRun, this.workaroundFlags, this.extendedTypeScratch);
        this.sampleIndex = 0;
        this.lastSyncSampleIndex = 0;
        this.pendingSeekSyncSampleIndex = 0;
        if (this.pendingSeekTimeMs != 0) {
            for (int i = 0; i < this.fragmentRun.length; i++) {
                if (this.fragmentRun.sampleIsSyncFrameTable[i] && this.fragmentRun.getSamplePresentationTime(i) <= this.pendingSeekTimeMs) {
                    this.pendingSeekSyncSampleIndex = i;
                }
            }
            this.pendingSeekTimeMs = 0;
        }
    }

    private static DefaultSampleValues parseTrex(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(16);
        return new DefaultSampleValues(parsableByteArray.readUnsignedIntToInt() - 1, parsableByteArray.readUnsignedIntToInt(), parsableByteArray.readUnsignedIntToInt(), parsableByteArray.readInt());
    }

    private static void parseMoof(Track track, DefaultSampleValues defaultSampleValues, Atom.ContainerAtom containerAtom, TrackFragment trackFragment, int i, byte[] bArr) {
        parseTraf(track, defaultSampleValues, containerAtom.getContainerAtomOfType(Atom.TYPE_traf), trackFragment, i, bArr);
    }

    private static void parseTraf(Track track, DefaultSampleValues defaultSampleValues, Atom.ContainerAtom containerAtom, TrackFragment trackFragment, int i, byte[] bArr) {
        long tfdt = containerAtom.getLeafAtomOfType(Atom.TYPE_tfdt) == null ? 0L : parseTfdt(containerAtom.getLeafAtomOfType(Atom.TYPE_tfdt).data);
        DefaultSampleValues tfhd = parseTfhd(defaultSampleValues, containerAtom.getLeafAtomOfType(Atom.TYPE_tfhd).data);
        trackFragment.sampleDescriptionIndex = tfhd.sampleDescriptionIndex;
        parseTrun(track, tfhd, tfdt, i, containerAtom.getLeafAtomOfType(Atom.TYPE_trun).data, trackFragment);
        Atom.LeafAtom leafAtomOfType = containerAtom.getLeafAtomOfType(Atom.TYPE_saiz);
        if (leafAtomOfType != null) {
            parseSaiz(track.sampleDescriptionEncryptionBoxes[tfhd.sampleDescriptionIndex], leafAtomOfType.data, trackFragment);
        }
        Atom.LeafAtom leafAtomOfType2 = containerAtom.getLeafAtomOfType(Atom.TYPE_senc);
        if (leafAtomOfType2 != null) {
            parseSenc(leafAtomOfType2.data, trackFragment);
        }
        int size = containerAtom.leafChildren.size();
        for (int i2 = 0; i2 < size; i2++) {
            Atom.LeafAtom leafAtom = containerAtom.leafChildren.get(i2);
            if (leafAtom.type == Atom.TYPE_uuid) {
                parseUuid(leafAtom.data, trackFragment, bArr);
            }
        }
    }

    private static void parseSaiz(TrackEncryptionBox trackEncryptionBox, ParsableByteArray parsableByteArray, TrackFragment trackFragment) {
        int i;
        int i2 = trackEncryptionBox.initializationVectorSize;
        parsableByteArray.setPosition(8);
        if ((Mp4Util.parseFullAtomFlags(parsableByteArray.readInt()) & 1) == 1) {
            parsableByteArray.skip(8);
        }
        int unsignedByte = parsableByteArray.readUnsignedByte();
        int unsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
        if (unsignedIntToInt != trackFragment.length) {
            throw new IllegalStateException("Length mismatch: " + unsignedIntToInt + ", " + trackFragment.length);
        }
        if (unsignedByte == 0) {
            boolean[] zArr = trackFragment.sampleHasSubsampleEncryptionTable;
            int i3 = 0;
            i = 0;
            while (i3 < unsignedIntToInt) {
                int unsignedByte2 = parsableByteArray.readUnsignedByte();
                int i4 = i + unsignedByte2;
                zArr[i3] = unsignedByte2 > i2;
                i3++;
                i = i4;
            }
        } else {
            boolean z = unsignedByte > i2;
            i = (unsignedByte * unsignedIntToInt) + 0;
            Arrays.fill(trackFragment.sampleHasSubsampleEncryptionTable, 0, unsignedIntToInt, z);
        }
        trackFragment.initEncryptionData(i);
    }

    private static DefaultSampleValues parseTfhd(DefaultSampleValues defaultSampleValues, ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(8);
        int fullAtomFlags = Mp4Util.parseFullAtomFlags(parsableByteArray.readInt());
        parsableByteArray.skip(4);
        if ((fullAtomFlags & 1) != 0) {
            parsableByteArray.skip(8);
        }
        return new DefaultSampleValues((fullAtomFlags & 2) != 0 ? parsableByteArray.readUnsignedIntToInt() - 1 : defaultSampleValues.sampleDescriptionIndex, (fullAtomFlags & 8) != 0 ? parsableByteArray.readUnsignedIntToInt() : defaultSampleValues.duration, (fullAtomFlags & 16) != 0 ? parsableByteArray.readUnsignedIntToInt() : defaultSampleValues.size, (fullAtomFlags & 32) != 0 ? parsableByteArray.readUnsignedIntToInt() : defaultSampleValues.flags);
    }

    private static long parseTfdt(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(8);
        return Mp4Util.parseFullAtomVersion(parsableByteArray.readInt()) == 1 ? parsableByteArray.readUnsignedLongToLong() : parsableByteArray.readUnsignedInt();
    }

    private static void parseTrun(Track track, DefaultSampleValues defaultSampleValues, long j, int i, ParsableByteArray parsableByteArray, TrackFragment trackFragment) {
        int i2;
        parsableByteArray.setPosition(8);
        int fullAtomFlags = Mp4Util.parseFullAtomFlags(parsableByteArray.readInt());
        int unsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
        if ((fullAtomFlags & 1) != 0) {
            parsableByteArray.skip(4);
        }
        boolean z = (fullAtomFlags & 4) != 0;
        int unsignedIntToInt2 = defaultSampleValues.flags;
        if (z) {
            unsignedIntToInt2 = parsableByteArray.readUnsignedIntToInt();
        }
        boolean z2 = (fullAtomFlags & 256) != 0;
        boolean z3 = (fullAtomFlags & 512) != 0;
        boolean z4 = (fullAtomFlags & 1024) != 0;
        boolean z5 = (fullAtomFlags & 2048) != 0;
        trackFragment.initTables(unsignedIntToInt);
        int[] iArr = trackFragment.sampleSizeTable;
        int[] iArr2 = trackFragment.sampleCompositionTimeOffsetTable;
        long[] jArr = trackFragment.sampleDecodingTimeTable;
        boolean[] zArr = trackFragment.sampleIsSyncFrameTable;
        long j2 = track.timescale;
        boolean z6 = track.type == 1986618469 && (i & 1) == 1;
        int i3 = 0;
        while (i3 < unsignedIntToInt) {
            int unsignedIntToInt3 = z2 ? parsableByteArray.readUnsignedIntToInt() : defaultSampleValues.duration;
            int unsignedIntToInt4 = z3 ? parsableByteArray.readUnsignedIntToInt() : defaultSampleValues.size;
            if (i3 == 0 && z) {
                i2 = unsignedIntToInt2;
            } else {
                i2 = z4 ? parsableByteArray.readInt() : defaultSampleValues.flags;
            }
            if (z5) {
                iArr2[i3] = (int) (((long) (parsableByteArray.readInt() * 1000)) / j2);
            } else {
                iArr2[i3] = 0;
            }
            jArr[i3] = (1000 * j) / j2;
            iArr[i3] = unsignedIntToInt4;
            zArr[i3] = ((i2 >> 16) & 1) == 0 && (!z6 || i3 == 0);
            j += (long) unsignedIntToInt3;
            i3++;
        }
    }

    private static void parseUuid(ParsableByteArray parsableByteArray, TrackFragment trackFragment, byte[] bArr) {
        parsableByteArray.setPosition(8);
        parsableByteArray.readBytes(bArr, 0, 16);
        if (Arrays.equals(bArr, PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE)) {
            parseSenc(parsableByteArray, 16, trackFragment);
        }
    }

    private static void parseSenc(ParsableByteArray parsableByteArray, TrackFragment trackFragment) {
        parseSenc(parsableByteArray, 0, trackFragment);
    }

    private static void parseSenc(ParsableByteArray parsableByteArray, int i, TrackFragment trackFragment) {
        parsableByteArray.setPosition(i + 8);
        int fullAtomFlags = Mp4Util.parseFullAtomFlags(parsableByteArray.readInt());
        if ((fullAtomFlags & 1) != 0) {
            throw new IllegalStateException("Overriding TrackEncryptionBox parameters is unsupported");
        }
        boolean z = (fullAtomFlags & 2) != 0;
        int unsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
        if (unsignedIntToInt != trackFragment.length) {
            throw new IllegalStateException("Length mismatch: " + unsignedIntToInt + ", " + trackFragment.length);
        }
        Arrays.fill(trackFragment.sampleHasSubsampleEncryptionTable, 0, unsignedIntToInt, z);
        trackFragment.initEncryptionData(parsableByteArray.bytesLeft());
        trackFragment.fillEncryptionData(parsableByteArray);
    }

    private static SegmentIndex parseSidx(ParsableByteArray parsableByteArray) {
        long unsignedLongToLong;
        long j;
        parsableByteArray.setPosition(8);
        int fullAtomVersion = Mp4Util.parseFullAtomVersion(parsableByteArray.readInt());
        parsableByteArray.skip(4);
        long unsignedInt = parsableByteArray.readUnsignedInt();
        if (fullAtomVersion == 0) {
            long unsignedInt2 = parsableByteArray.readUnsignedInt();
            unsignedLongToLong = parsableByteArray.readUnsignedInt();
            j = unsignedInt2;
        } else {
            long unsignedLongToLong2 = parsableByteArray.readUnsignedLongToLong();
            unsignedLongToLong = parsableByteArray.readUnsignedLongToLong();
            j = unsignedLongToLong2;
        }
        parsableByteArray.skip(2);
        int unsignedShort = parsableByteArray.readUnsignedShort();
        int[] iArr = new int[unsignedShort];
        long[] jArr = new long[unsignedShort];
        long[] jArr2 = new long[unsignedShort];
        long[] jArr3 = new long[unsignedShort];
        long j2 = unsignedLongToLong;
        int i = 0;
        long j3 = j;
        long jScaleLargeTimestamp = Util.scaleLargeTimestamp(j, 1000000L, unsignedInt);
        while (i < unsignedShort) {
            int i2 = parsableByteArray.readInt();
            if ((Integer.MIN_VALUE & i2) != 0) {
                throw new IllegalStateException("Unhandled indirect reference");
            }
            long unsignedInt3 = parsableByteArray.readUnsignedInt();
            iArr[i] = i2 & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            jArr[i] = j2;
            jArr3[i] = jScaleLargeTimestamp;
            long j4 = j3 + unsignedInt3;
            long jScaleLargeTimestamp2 = Util.scaleLargeTimestamp(j4, 1000000L, unsignedInt);
            jArr2[i] = jScaleLargeTimestamp2 - jArr3[i];
            parsableByteArray.skip(4);
            j2 += (long) iArr[i];
            i++;
            j3 = j4;
            jScaleLargeTimestamp = jScaleLargeTimestamp2;
        }
        return new SegmentIndex(parsableByteArray.limit(), iArr, jArr, jArr2, jArr3);
    }

    private int readEncryptionData(NonBlockingInputStream nonBlockingInputStream) {
        if (!this.fragmentRun.fillEncryptionData(nonBlockingInputStream)) {
            return 1;
        }
        enterState(3);
        return 0;
    }

    private int readOrSkipSample(NonBlockingInputStream nonBlockingInputStream, SampleHolder sampleHolder) {
        if (this.sampleIndex >= this.fragmentRun.length) {
            enterState(0);
            return 0;
        }
        int i = this.fragmentRun.sampleSizeTable[this.sampleIndex];
        if (nonBlockingInputStream.getAvailableByteCount() < i) {
            return 1;
        }
        if (this.sampleIndex < this.pendingSeekSyncSampleIndex) {
            return skipSample(nonBlockingInputStream, i);
        }
        return readSample(nonBlockingInputStream, i, sampleHolder);
    }

    private int skipSample(NonBlockingInputStream nonBlockingInputStream, int i) {
        if (this.fragmentRun.definesEncryptionData) {
            ParsableByteArray parsableByteArray = this.fragmentRun.sampleEncryptionData;
            int i2 = this.track.sampleDescriptionEncryptionBoxes[this.fragmentRun.sampleDescriptionIndex].initializationVectorSize;
            boolean z = this.fragmentRun.sampleHasSubsampleEncryptionTable[this.sampleIndex];
            parsableByteArray.skip(i2);
            int unsignedShort = z ? parsableByteArray.readUnsignedShort() : 1;
            if (z) {
                parsableByteArray.skip(unsignedShort * 6);
            }
        }
        nonBlockingInputStream.skip(i);
        this.sampleIndex++;
        enterState(3);
        return 0;
    }

    private int readSample(NonBlockingInputStream nonBlockingInputStream, int i, SampleHolder sampleHolder) {
        if (sampleHolder == null) {
            return 32;
        }
        sampleHolder.timeUs = this.fragmentRun.getSamplePresentationTime(this.sampleIndex) * 1000;
        sampleHolder.flags = 0;
        if (this.fragmentRun.sampleIsSyncFrameTable[this.sampleIndex]) {
            sampleHolder.flags |= 1;
            this.lastSyncSampleIndex = this.sampleIndex;
        }
        if (sampleHolder.data == null || sampleHolder.data.capacity() < i) {
            sampleHolder.replaceBuffer(i);
        }
        if (this.fragmentRun.definesEncryptionData) {
            readSampleEncryptionData(this.fragmentRun.sampleEncryptionData, sampleHolder);
        }
        ByteBuffer byteBuffer = sampleHolder.data;
        if (byteBuffer == null) {
            nonBlockingInputStream.skip(i);
            sampleHolder.size = 0;
        } else {
            nonBlockingInputStream.read(byteBuffer, i);
            if (this.track.type == 1986618469) {
                Mp4Util.replaceLengthPrefixesWithAvcStartCodes(byteBuffer, i);
            }
            sampleHolder.size = i;
        }
        this.sampleIndex++;
        enterState(3);
        return 4;
    }

    @SuppressLint({"InlinedApi"})
    private void readSampleEncryptionData(ParsableByteArray parsableByteArray, SampleHolder sampleHolder) {
        TrackEncryptionBox trackEncryptionBox = this.track.sampleDescriptionEncryptionBoxes[this.fragmentRun.sampleDescriptionIndex];
        byte[] bArr = trackEncryptionBox.keyId;
        boolean z = trackEncryptionBox.isEncrypted;
        int i = trackEncryptionBox.initializationVectorSize;
        boolean z2 = this.fragmentRun.sampleHasSubsampleEncryptionTable[this.sampleIndex];
        byte[] bArr2 = sampleHolder.cryptoInfo.iv;
        if (bArr2 == null || bArr2.length != 16) {
            bArr2 = new byte[16];
        }
        parsableByteArray.readBytes(bArr2, 0, i);
        int unsignedShort = z2 ? parsableByteArray.readUnsignedShort() : 1;
        int[] iArr = sampleHolder.cryptoInfo.numBytesOfClearData;
        if (iArr == null || iArr.length < unsignedShort) {
            iArr = new int[unsignedShort];
        }
        int[] iArr2 = sampleHolder.cryptoInfo.numBytesOfEncryptedData;
        if (iArr2 == null || iArr2.length < unsignedShort) {
            iArr2 = new int[unsignedShort];
        }
        if (z2) {
            for (int i2 = 0; i2 < unsignedShort; i2++) {
                iArr[i2] = parsableByteArray.readUnsignedShort();
                iArr2[i2] = parsableByteArray.readUnsignedIntToInt();
            }
        } else {
            iArr[0] = 0;
            iArr2[0] = this.fragmentRun.sampleSizeTable[this.sampleIndex];
        }
        sampleHolder.cryptoInfo.set(unsignedShort, iArr, iArr2, bArr, bArr2, z ? 1 : 0);
        if (z) {
            sampleHolder.flags |= 2;
        }
    }
}
