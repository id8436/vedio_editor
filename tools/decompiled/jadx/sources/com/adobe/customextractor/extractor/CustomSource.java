package com.adobe.customextractor.extractor;

import android.content.Context;
import android.media.MediaCodec;
import android.net.Uri;
import android.util.Log;
import android.util.SparseArray;
import com.adobe.customextractor.Assertions;
import com.adobe.customextractor.DataSource.CustomDataSource;
import com.adobe.customextractor.DataSource.DataSpec;
import com.adobe.customextractor.SampleLoader.SampleLoader;
import com.adobe.customextractor.Tracks.CustomTrackOutput;
import com.adobe.customextractor.Tracks.TrackOutput;
import com.adobe.customextractor.Util.Allocate.CustomCountAllocator;
import com.adobe.customextractor.Util.Media.MediaFormat;
import com.adobe.customextractor.Util.SampleHolder;
import com.adobe.customextractor.extractor.Input.CustomExtractorInput;
import com.adobe.premiereclip.dcx.DCXProjectKeys;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class CustomSource implements SampleLoader.LoaderCallback, ExtractorOutput {
    private static final int BUFFER_FRAGMENT_LENGTH = 262144;
    private static final String TAG = "CustomSource";
    private CustomCountAllocator allocator;
    private Context context;
    private CustomDataSource dataSource;
    private SampleLoader loader;
    private Parser parser;
    private boolean prepared;
    private SampleHolder sampleHolder;
    private SparseArray<CustomTrackOutput> sampleQueues;
    private int selectedTrackIndex;
    private String sourcePath;
    private Uri sourceUri;
    private String trackType = DCXProjectKeys.kDCXKey_MediaRef_componentVideo_name;
    private boolean tracksBuilt;
    private static int requestedBufferSize = 104857600;
    private static int NO_RESET_PENDING = -1;

    public CustomSource(Context context) {
        this.context = context;
    }

    public void setTrackType(String str) {
        this.trackType = str;
    }

    public void release() {
        if (this.loader != null) {
            this.loader.release();
        }
    }

    public void setSource(Uri uri) {
        this.sourceUri = uri;
        this.sourcePath = this.sourceUri.getPath();
        setSourceInternal();
    }

    public void setSource(String str) {
        this.sourcePath = str;
        this.sourceUri = Uri.fromFile(new File(this.sourcePath));
        setSourceInternal();
    }

    private void setSourceInternal() {
        Log.i(TAG, "SetSourceInternal " + this.trackType);
        this.dataSource = new CustomDataSource(this.context, TAG);
        this.parser = new Parser();
        this.parser.setExtractorOutput(this);
        this.sampleQueues = new SparseArray<>();
        this.allocator = new CustomCountAllocator(262144);
        this.prepared = false;
        this.tracksBuilt = false;
        this.sampleHolder = new SampleHolder(0);
        this.loader = new SampleLoader(this, this.dataSource, this.sourceUri, this.allocator, this.parser, this.trackType);
    }

    public boolean prepare(long j) throws IOException {
        return prepare(j, false);
    }

    public boolean prepare(long j, boolean z) throws IOException {
        if (this.prepared) {
            return true;
        }
        try {
            if (this.parser != null) {
                this.parser.seek();
            }
            Log.i(TAG, "Opening data source");
            long jOpen = this.dataSource.open(new DataSpec(this.sourceUri, j, -1L, null));
            if (jOpen != -1) {
                jOpen += j;
            }
            CustomExtractorInput customExtractorInput = new CustomExtractorInput(this.dataSource, j, jOpen);
            Log.i(TAG, "Start Preparing parser");
            if (this.parser.prepare(customExtractorInput, this.dataSource, this.sourceUri)) {
                Log.i(TAG, "Prepared parser");
                this.prepared = true;
                this.dataSource.close();
                Log.i(TAG, "Close data source");
                if (!z && this.loader != null) {
                    this.loader.startLoadingAtOffset(this.parser.getPosition(j, 1), this.selectedTrackIndex);
                }
            } else {
                this.prepared = false;
                Log.e(TAG, "Could not prepare parser");
            }
        } catch (IOException e2) {
            this.prepared = false;
            Log.e(TAG, "Could not open datasource");
        } catch (ArrayIndexOutOfBoundsException e3) {
            this.prepared = false;
            e3.printStackTrace();
        } catch (InterruptedException e4) {
            this.prepared = false;
            Log.e(TAG, "Could not prepare parser");
        }
        if (!this.prepared) {
            throwSourceException();
        }
        return this.prepared;
    }

    public void selectTrack(int i) {
        this.selectedTrackIndex = i;
    }

    public void deselectTrack(int i) {
        if (i == this.selectedTrackIndex) {
            this.selectedTrackIndex = -1;
        }
    }

    public int getTrackCount() {
        if (!this.tracksBuilt) {
            return 0;
        }
        Assertions.checkState(this.tracksBuilt);
        Assertions.checkState(this.prepared);
        return this.sampleQueues.size();
    }

    public MediaFormat getTrackFormat(int i) {
        if (!this.tracksBuilt || this.parser == null) {
            return null;
        }
        return this.sampleQueues.get(i).getFormat();
    }

    public android.media.MediaFormat getNativeTrackFormat(int i) {
        MediaFormat format;
        if (!this.tracksBuilt || this.parser == null || (format = this.sampleQueues.get(i).getFormat()) == null) {
            return null;
        }
        return format.getFrameworkMediaFormatV16();
    }

    private boolean haveFormatForAllTracks() {
        for (int i = 0; i < this.sampleQueues.size(); i++) {
            if (!this.sampleQueues.valueAt(i).hasFormat()) {
                return false;
            }
        }
        return true;
    }

    public long getSampleTime() {
        return this.sampleHolder.timeUs;
    }

    public int getSampleFlags() {
        return this.sampleHolder.flags;
    }

    public boolean getSampleCryptoInfo(MediaCodec.CryptoInfo cryptoInfo) {
        if (!this.sampleHolder.isEncrypted()) {
            return false;
        }
        this.sampleHolder.cryptoInfo.getFrameworkCryptoInfoV16();
        return true;
    }

    public int readSampleData(ByteBuffer byteBuffer, int i) throws InterruptedException, IOException {
        if (!this.prepared || !this.tracksBuilt) {
            prepare(0L);
        }
        this.sampleHolder.data = byteBuffer;
        this.sampleHolder.data.clear();
        if (this.sampleQueues.valueAt(this.selectedTrackIndex).getSample(this.sampleHolder)) {
            return this.sampleHolder.size;
        }
        if (this.loader.isLoadingFinished()) {
            Log.i(TAG, "ReadNextSample loader is Finished, eos");
            return -1;
        }
        Log.i(TAG, "ReadNextSample: loader not finished, snf");
        return -2;
    }

    public void seekTo(long j, int i) throws IOException {
        Log.i(TAG, "Seek To " + j);
        if (this.prepared && this.tracksBuilt) {
            if (!this.sampleQueues.valueAt(this.selectedTrackIndex).skipToKeyframeBefore(j)) {
                this.loader.stopLoading();
                resetAtPositionUs(j, i);
            } else {
                Log.i(TAG, "Seek:Skipped to key frame");
            }
        }
    }

    private void resetAtPositionUs(long j, int i) {
        this.parser.seek();
        clearSamples();
        long position = this.parser.getPosition(j, i);
        if (this.loader != null) {
            this.loader.startLoadingAtOffset(position, this.selectedTrackIndex);
        } else {
            Log.e(TAG, "Reset:LoaderDoesNotExist");
        }
    }

    private void clearSamples() {
        if (this.sampleQueues != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.sampleQueues.size()) {
                    this.sampleQueues.valueAt(i2).clear();
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    public void advance() {
    }

    private void throwSourceException() throws IOException {
        throw new IOException();
    }

    @Override // com.adobe.customextractor.SampleLoader.SampleLoader.LoaderCallback
    public void onLoaderRelease() {
        Log.i(TAG, "onLoaderRelease");
        clearSamples();
        this.allocator.trim(0);
        this.prepared = false;
        this.tracksBuilt = false;
    }

    @Override // com.adobe.customextractor.extractor.ExtractorOutput
    public TrackOutput getTrackOutput(int i) {
        CustomTrackOutput customTrackOutput = this.sampleQueues.get(i);
        if (customTrackOutput == null) {
            CustomTrackOutput customTrackOutput2 = new CustomTrackOutput(this.allocator);
            this.sampleQueues.put(i, customTrackOutput2);
            return customTrackOutput2;
        }
        return customTrackOutput;
    }

    @Override // com.adobe.customextractor.extractor.ExtractorOutput
    public void builtTracks() {
        this.tracksBuilt = true;
    }
}
