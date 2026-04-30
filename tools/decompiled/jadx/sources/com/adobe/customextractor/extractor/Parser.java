package com.adobe.customextractor.extractor;

import android.net.Uri;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Log;
import com.adobe.customextractor.Assertions;
import com.adobe.customextractor.DataSource.DataSource;
import com.adobe.customextractor.DataSource.DataSpec;
import com.adobe.customextractor.Tracks.Track;
import com.adobe.customextractor.Tracks.TrackOutput;
import com.adobe.customextractor.Tracks.TrackSampleTable;
import com.adobe.customextractor.Util.Atom.Atom;
import com.adobe.customextractor.Util.Atom.AtomParsers;
import com.adobe.customextractor.Util.CodecUtil.H264Util;
import com.adobe.customextractor.Util.ParsableByteArray;
import com.adobe.customextractor.Util.PositionHolder;
import com.adobe.customextractor.extractor.Input.CustomExtractorInput;
import com.adobe.customextractor.extractor.Input.ExtractorInput;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Stack;

/* JADX INFO: loaded from: classes2.dex */
public class Parser {
    private static final int RELOAD_MINIMUM_SEEK_DISTANCE = 262144;
    public static final int RESULT_CONTINUE = 1;
    public static final int RESULT_END_OF_INPUT = -1;
    public static final int RESULT_SEEK = 0;
    private static final int STATE_READING_ATOM_HEADER = 0;
    private static final int STATE_READING_ATOM_PAYLOAD = 1;
    private static final int STATE_READING_SAMPLE = 2;
    private static final String TAG = "CustomExtractor";
    private int atomBytesRead;
    private ParsableByteArray atomData;
    private long atomSize;
    private int atomType;
    private ExtractorOutput extractorOutput;
    private long rootAtomBytesRead;
    private int sampleBytesWritten;
    private int sampleCurrentNalBytesRemaining;
    private int sampleSize;
    private Mp4Track[] tracks;
    private ParsableByteArray atomHeader = new ParsableByteArray(16);
    private final Stack<Atom.ContainerAtom> containerAtoms = new Stack<>();
    private int extractorState = 0;
    private final ParsableByteArray nalStartCode = new ParsableByteArray(H264Util.NAL_START_CODE);
    private final ParsableByteArray nalLength = new ParsableByteArray(4);

    public boolean prepare(ExtractorInput extractorInput, DataSource dataSource, Uri uri) throws InterruptedException, IOException {
        PositionHolder positionHolder = new PositionHolder();
        positionHolder.position = 0L;
        this.extractorState = 0;
        boolean z = false;
        while (true) {
            switch (this.extractorState) {
                case 0:
                    Log.i(TAG, "Read atom header");
                    if (!readAtomHeader(extractorInput)) {
                        if (extractorInput != null) {
                            positionHolder.position = extractorInput.getPosition();
                        }
                        z = true;
                    }
                    break;
                case 1:
                    Log.i(TAG, "Read atom payload");
                    if (readAtomPayload(extractorInput, positionHolder)) {
                        z = true;
                    }
                    break;
                default:
                    return true;
            }
            if (z) {
                Log.i(TAG, "Retry: Closing Data source");
                dataSource.close();
                Log.i(TAG, "Retry: Closed Data source");
                long j = positionHolder.position;
                Log.i(TAG, "Retry: Opening data source");
                try {
                    long jOpen = dataSource.open(new DataSpec(uri, j, -1L, null));
                    Log.i(TAG, "Retyr: Opened data source");
                    if (jOpen != -1) {
                        jOpen += j;
                    }
                    extractorInput = new CustomExtractorInput(dataSource, j, jOpen);
                    z = false;
                } catch (IOException e2) {
                    Log.e(TAG, "IOException while opening data source " + e2);
                    throw e2;
                }
            }
        }
    }

    public void setExtractorOutput(ExtractorOutput extractorOutput) {
        this.extractorOutput = extractorOutput;
    }

    public void seek() {
        this.rootAtomBytesRead = 0L;
        this.sampleBytesWritten = 0;
        this.sampleCurrentNalBytesRemaining = 0;
    }

    private long getPrevSyncPosition(long j) {
        long j2 = Long.MAX_VALUE;
        for (int i = 0; i < this.tracks.length; i++) {
            TrackSampleTable trackSampleTable = this.tracks[i].sampleTable;
            int indexOfEarlierOrEqualSynchronizationSample = trackSampleTable.getIndexOfEarlierOrEqualSynchronizationSample(j);
            if (indexOfEarlierOrEqualSynchronizationSample == -1) {
                indexOfEarlierOrEqualSynchronizationSample = trackSampleTable.getIndexOfLaterOrEqualSynchronizationSample(j);
            }
            this.tracks[i].sampleIndex = indexOfEarlierOrEqualSynchronizationSample;
            long j3 = trackSampleTable.offsets[this.tracks[i].sampleIndex];
            if (j3 < j2) {
                j2 = j3;
            }
        }
        return j2;
    }

    private long getNextOrEqualClosestPosition(long j) {
        long j2 = Long.MAX_VALUE;
        for (int i = 0; i < this.tracks.length; i++) {
            TrackSampleTable trackSampleTable = this.tracks[i].sampleTable;
            int indexOfLaterOrEqualClosestSample = trackSampleTable.getIndexOfLaterOrEqualClosestSample(j);
            if (indexOfLaterOrEqualClosestSample == -1) {
                indexOfLaterOrEqualClosestSample = trackSampleTable.getIndexOfEarlierOrEqualSynchronizationSample(j);
            }
            this.tracks[i].sampleIndex = indexOfLaterOrEqualClosestSample;
            long j3 = trackSampleTable.offsets[this.tracks[i].sampleIndex];
            if (j3 < j2) {
                j2 = j3;
            }
        }
        return j2;
    }

    private long getNextOrEqualSyncPosition(long j) {
        long j2 = Long.MAX_VALUE;
        for (int i = 0; i < this.tracks.length; i++) {
            TrackSampleTable trackSampleTable = this.tracks[i].sampleTable;
            int indexOfEarlierOrEqualSynchronizationSample = trackSampleTable.getIndexOfEarlierOrEqualSynchronizationSample(j);
            if (indexOfEarlierOrEqualSynchronizationSample == -1) {
                indexOfEarlierOrEqualSynchronizationSample = trackSampleTable.getIndexOfLaterOrEqualSynchronizationSample(j);
            }
            this.tracks[i].sampleIndex = indexOfEarlierOrEqualSynchronizationSample;
            long j3 = trackSampleTable.offsets[this.tracks[i].sampleIndex];
            if (j3 < j2) {
                j2 = j3;
            }
        }
        return j2;
    }

    public long getPosition(long j, int i) {
        switch (i) {
        }
        return getPrevSyncPosition(j);
    }

    private boolean readAtomHeader(ExtractorInput extractorInput) throws InterruptedException, IOException {
        if (!extractorInput.readFully(this.atomHeader.data, 0, 8, true)) {
            return false;
        }
        this.atomHeader.setPosition(0);
        this.atomSize = this.atomHeader.readUnsignedInt();
        this.atomType = this.atomHeader.readInt();
        if (this.atomSize == 1) {
            extractorInput.readFully(this.atomHeader.data, 8, 8);
            this.atomSize = this.atomHeader.readLong();
            this.rootAtomBytesRead += 16;
            this.atomBytesRead = 16;
        } else {
            this.rootAtomBytesRead += 8;
            this.atomBytesRead = 8;
        }
        if (shouldParseContainerAtom(this.atomType)) {
            if (this.atomSize == 1) {
                this.containerAtoms.add(new Atom.ContainerAtom(this.atomType, (this.rootAtomBytesRead + this.atomSize) - ((long) this.atomBytesRead)));
            } else {
                this.containerAtoms.add(new Atom.ContainerAtom(this.atomType, (this.rootAtomBytesRead + this.atomSize) - ((long) this.atomBytesRead)));
            }
            this.extractorState = 0;
        } else if (shouldParseLeafAtom(this.atomType)) {
            Assertions.checkState(this.atomSize < 2147483647L);
            this.atomData = new ParsableByteArray((int) this.atomSize);
            System.arraycopy(this.atomHeader.data, 0, this.atomData.data, 0, 8);
            this.extractorState = 1;
        } else {
            this.atomData = null;
            this.extractorState = 1;
        }
        return true;
    }

    private boolean readAtomPayload(ExtractorInput extractorInput, PositionHolder positionHolder) throws InterruptedException, IOException {
        this.extractorState = 0;
        this.rootAtomBytesRead += this.atomSize - ((long) this.atomBytesRead);
        long j = this.atomSize - ((long) this.atomBytesRead);
        boolean z = this.atomData == null && (this.atomSize >= PlaybackStateCompat.ACTION_SET_REPEAT_MODE || this.atomSize > 2147483647L);
        if (z) {
            positionHolder.position = this.rootAtomBytesRead;
        } else if (this.atomData != null) {
            extractorInput.readFully(this.atomData.data, this.atomBytesRead, (int) j);
            if (!this.containerAtoms.isEmpty()) {
                this.containerAtoms.peek().add(new Atom.LeafAtom(this.atomType, this.atomData));
            }
        } else {
            extractorInput.skipFully((int) j);
        }
        while (!this.containerAtoms.isEmpty() && this.containerAtoms.peek().endByteOffset == this.rootAtomBytesRead) {
            Atom.ContainerAtom containerAtomPop = this.containerAtoms.pop();
            if (containerAtomPop.type == Atom.TYPE_moov) {
                processMoovAtom(containerAtomPop);
            } else if (!this.containerAtoms.isEmpty()) {
                this.containerAtoms.peek().add(containerAtomPop);
            }
        }
        return z;
    }

    public int readSampleData(ExtractorInput extractorInput, PositionHolder positionHolder, int i) throws InterruptedException, IOException {
        int trackIndexOfEarliestCurrentSample = getTrackIndexOfEarliestCurrentSample();
        if (trackIndexOfEarliestCurrentSample == -1) {
            return -1;
        }
        Mp4Track mp4Track = this.tracks[trackIndexOfEarliestCurrentSample];
        if (i != trackIndexOfEarliestCurrentSample) {
            mp4Track.sampleIndex++;
            return 1;
        }
        int i2 = mp4Track.sampleIndex;
        long j = mp4Track.sampleTable.offsets[i2];
        long position = (j - extractorInput.getPosition()) + ((long) this.sampleBytesWritten);
        if (position < 0 || position >= PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
            positionHolder.position = j;
            return 0;
        }
        extractorInput.skipFully((int) position);
        this.sampleSize = mp4Track.sampleTable.sizes[i2];
        if (mp4Track.track.nalUnitLengthFieldLength != -1) {
            byte[] bArr = this.nalLength.data;
            bArr[0] = 0;
            bArr[1] = 0;
            bArr[2] = 0;
            int i3 = mp4Track.track.nalUnitLengthFieldLength;
            int i4 = 4 - mp4Track.track.nalUnitLengthFieldLength;
            while (this.sampleBytesWritten < this.sampleSize) {
                if (this.sampleCurrentNalBytesRemaining == 0) {
                    extractorInput.readFully(this.nalLength.data, i4, i3);
                    this.nalLength.setPosition(0);
                    this.sampleCurrentNalBytesRemaining = this.nalLength.readUnsignedIntToInt();
                    this.nalStartCode.setPosition(0);
                    mp4Track.trackOutput.sampleData(this.nalStartCode, 4);
                    this.sampleBytesWritten += 4;
                    this.sampleSize += i4;
                } else {
                    int iSampleData = mp4Track.trackOutput.sampleData(extractorInput, this.sampleCurrentNalBytesRemaining);
                    this.sampleBytesWritten += iSampleData;
                    this.sampleCurrentNalBytesRemaining -= iSampleData;
                }
            }
        } else {
            while (this.sampleBytesWritten < this.sampleSize) {
                int iSampleData2 = mp4Track.trackOutput.sampleData(extractorInput, this.sampleSize - this.sampleBytesWritten);
                this.sampleBytesWritten += iSampleData2;
                this.sampleCurrentNalBytesRemaining -= iSampleData2;
            }
        }
        mp4Track.trackOutput.sampleMetadata(mp4Track.sampleTable.timestampsUs[i2], mp4Track.sampleTable.flags[i2], this.sampleSize, 0, null);
        mp4Track.sampleIndex++;
        this.sampleBytesWritten = 0;
        this.sampleCurrentNalBytesRemaining = 0;
        return 1;
    }

    private void processMoovAtom(Atom.ContainerAtom containerAtom) {
        Track trak;
        ArrayList arrayList = new ArrayList();
        long j = Long.MAX_VALUE;
        for (int i = 0; i < containerAtom.containerChildren.size(); i++) {
            Atom.ContainerAtom containerAtom2 = containerAtom.containerChildren.get(i);
            if (containerAtom2.type == Atom.TYPE_trak && (trak = AtomParsers.parseTrak(containerAtom2, containerAtom.getLeafAtomOfType(Atom.TYPE_mvhd))) != null && (trak.type == 1936684398 || trak.type == 1986618469)) {
                TrackSampleTable stbl = AtomParsers.parseStbl(trak, containerAtom2.getContainerAtomOfType(Atom.TYPE_mdia).getContainerAtomOfType(Atom.TYPE_minf).getContainerAtomOfType(Atom.TYPE_stbl));
                if (stbl.sampleCount != 0) {
                    Mp4Track mp4Track = new Mp4Track(trak, stbl, this.extractorOutput.getTrackOutput(i));
                    mp4Track.trackOutput.format(trak.mediaFormat);
                    arrayList.add(mp4Track);
                    long j2 = stbl.offsets[0];
                    if (j2 < j) {
                        j = j2;
                    }
                }
            }
        }
        this.tracks = (Mp4Track[]) arrayList.toArray(new Mp4Track[0]);
        this.extractorOutput.builtTracks();
        this.extractorState = 2;
    }

    private int getTrackIndexOfEarliestCurrentSample() {
        int i = -1;
        long j = Long.MAX_VALUE;
        for (int i2 = 0; i2 < this.tracks.length; i2++) {
            Mp4Track mp4Track = this.tracks[i2];
            int i3 = mp4Track.sampleIndex;
            if (i3 != mp4Track.sampleTable.sampleCount) {
                long j2 = mp4Track.sampleTable.offsets[i3];
                if (j2 < j) {
                    j = j2;
                    i = i2;
                }
            }
        }
        return i;
    }

    private static boolean shouldParseContainerAtom(int i) {
        return i == Atom.TYPE_moov || i == Atom.TYPE_trak || i == Atom.TYPE_mdia || i == Atom.TYPE_minf || i == Atom.TYPE_stbl || i == Atom.TYPE_mp4a;
    }

    private static boolean shouldParseLeafAtom(int i) {
        return i == Atom.TYPE_mdhd || i == Atom.TYPE_mvhd || i == Atom.TYPE_hdlr || i == Atom.TYPE_vmhd || i == Atom.TYPE_smhd || i == Atom.TYPE_stsd || i == Atom.TYPE_avc1 || i == Atom.TYPE_avcC || i == Atom.TYPE_mp4a || i == Atom.TYPE_esds || i == Atom.TYPE_stts || i == Atom.TYPE_stss || i == Atom.TYPE_ctts || i == Atom.TYPE_stsc || i == Atom.TYPE_stsz || i == Atom.TYPE_stco || i == Atom.TYPE_co64 || i == Atom.TYPE_tkhd || i == Atom.TYPE_wave;
    }

    final class Mp4Track {
        public int sampleIndex;
        public final TrackSampleTable sampleTable;
        public final Track track;
        public final TrackOutput trackOutput;

        public Mp4Track(Track track, TrackSampleTable trackSampleTable, TrackOutput trackOutput) {
            this.track = track;
            this.sampleTable = trackSampleTable;
            this.trackOutput = trackOutput;
        }
    }
}
