.class public final Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;
.super Ljava/lang/Object;
.source "FragmentedMp4Extractor.java"

# interfaces
.implements Lcom/google/android/exoplayer/chunk/parser/Extractor;


# static fields
.field private static final CONTAINER_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final PARSED_ATOMS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

.field private static final READ_TERMINATING_RESULTS:I = 0x27

.field private static final STATE_READING_ATOM_HEADER:I = 0x0

.field private static final STATE_READING_ATOM_PAYLOAD:I = 0x1

.field private static final STATE_READING_ENCRYPTION_DATA:I = 0x2

.field private static final STATE_READING_SAMPLE:I = 0x3

.field public static final WORKAROUND_EVERY_VIDEO_FRAME_IS_SYNC_FRAME:I = 0x1


# instance fields
.field private atomBytesRead:I

.field private atomData:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private atomSize:I

.field private atomType:I

.field private final containerAtoms:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;",
            ">;"
        }
    .end annotation
.end field

.field private final extendedTypeScratch:[B

.field private extendsDefaults:Lcom/google/android/exoplayer/chunk/parser/mp4/DefaultSampleValues;

.field private final fragmentRun:Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;

.field private lastSyncSampleIndex:I

.field private parserState:I

.field private pendingSeekSyncSampleIndex:I

.field private pendingSeekTimeMs:I

.field private final psshData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/UUID;",
            "[B>;"
        }
    .end annotation
.end field

.field private rootAtomBytesRead:I

.field private sampleIndex:I

.field private segmentIndex:Lcom/google/android/exoplayer/chunk/parser/SegmentIndex;

.field private track:Lcom/google/android/exoplayer/mp4/Track;

.field private final workaroundFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

    .line 79
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 80
    sget v1, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_avc1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 81
    sget v1, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_avc3:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 82
    sget v1, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_esds:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 83
    sget v1, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_hdlr:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 84
    sget v1, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_mdat:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 85
    sget v1, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_mdhd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 86
    sget v1, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_moof:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 87
    sget v1, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_moov:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 88
    sget v1, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_mp4a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 89
    sget v1, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_mvhd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 90
    sget v1, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_sidx:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 91
    sget v1, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_stsd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 92
    sget v1, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_tfdt:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 93
    sget v1, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_tfhd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 94
    sget v1, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_tkhd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 95
    sget v1, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_traf:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 96
    sget v1, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_trak:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 97
    sget v1, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_trex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 98
    sget v1, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_trun:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 99
    sget v1, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_mvex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 100
    sget v1, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_mdia:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 101
    sget v1, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_minf:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 102
    sget v1, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_stbl:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 103
    sget v1, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_pssh:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 104
    sget v1, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_saiz:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 105
    sget v1, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_uuid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 106
    sget v1, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_senc:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 107
    sget v1, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_pasp:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->PARSED_ATOMS:Ljava/util/Set;

    .line 114
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 115
    sget v1, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_moov:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 116
    sget v1, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_trak:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 117
    sget v1, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_mdia:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 118
    sget v1, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_minf:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 119
    sget v1, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_stbl:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 120
    sget v1, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_avcC:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 121
    sget v1, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_moof:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 122
    sget v1, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_traf:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 123
    sget v1, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_mvex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->CONTAINER_TYPES:Ljava/util/Set;

    .line 125
    return-void

    .line 67
    nop

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;-><init>(I)V

    .line 155
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput p1, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->workaroundFlags:I

    .line 163
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->parserState:I

    .line 164
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 165
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->extendedTypeScratch:[B

    .line 166
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    .line 167
    new-instance v0, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;

    invoke-direct {v0}, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->psshData:Ljava/util/HashMap;

    .line 169
    return-void
.end method

.method private enterState(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 260
    packed-switch p1, :pswitch_data_0

    .line 268
    :cond_0
    :goto_0
    iput p1, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->parserState:I

    .line 269
    return-void

    .line 262
    :pswitch_0
    iput v1, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->atomBytesRead:I

    .line 263
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iput v1, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->rootAtomBytesRead:I

    goto :goto_0

    .line 260
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private onContainerAtomRead(Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;)I
    .locals 2

    .prologue
    .line 355
    iget v0, p1, Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;->type:I

    sget v1, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_moov:I

    if-ne v0, v1, :cond_0

    .line 356
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->onMoovContainerAtomRead(Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;)V

    .line 357
    const/16 v0, 0x8

    .line 363
    :goto_0
    return v0

    .line 358
    :cond_0
    iget v0, p1, Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;->type:I

    sget v1, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_moof:I

    if-ne v0, v1, :cond_2

    .line 359
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->onMoofContainerAtomRead(Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;)V

    .line 363
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 360
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;->add(Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;)V

    goto :goto_1
.end method

.method private onLeafAtomRead(Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;)I
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;->add(Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;)V

    .line 351
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 347
    :cond_1
    iget v0, p1, Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;->type:I

    sget v1, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_sidx:I

    if-ne v0, v1, :cond_0

    .line 348
    iget-object v0, p1, Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v0}, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->parseSidx(Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/chunk/parser/SegmentIndex;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->segmentIndex:Lcom/google/android/exoplayer/chunk/parser/SegmentIndex;

    .line 349
    const/16 v0, 0x10

    goto :goto_0
.end method

.method private onMoofContainerAtomRead(Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 388
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;->reset()V

    .line 389
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->track:Lcom/google/android/exoplayer/mp4/Track;

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->extendsDefaults:Lcom/google/android/exoplayer/chunk/parser/mp4/DefaultSampleValues;

    iget-object v3, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;

    iget v4, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->workaroundFlags:I

    iget-object v5, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->extendedTypeScratch:[B

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->parseMoof(Lcom/google/android/exoplayer/mp4/Track;Lcom/google/android/exoplayer/chunk/parser/mp4/DefaultSampleValues;Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;I[B)V

    .line 390
    iput v6, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->sampleIndex:I

    .line 391
    iput v6, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->lastSyncSampleIndex:I

    .line 392
    iput v6, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->pendingSeekSyncSampleIndex:I

    .line 393
    iget v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->pendingSeekTimeMs:I

    if-eqz v0, :cond_2

    move v0, v6

    .line 394
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;

    iget v1, v1, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;->length:I

    if-ge v0, v1, :cond_1

    .line 395
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;

    iget-object v1, v1, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;->getSamplePresentationTime(I)J

    move-result-wide v2

    iget v1, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->pendingSeekTimeMs:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 397
    iput v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->pendingSeekSyncSampleIndex:I

    .line 394
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 401
    :cond_1
    iput v6, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->pendingSeekTimeMs:I

    .line 403
    :cond_2
    return-void
.end method

.method private onMoovContainerAtomRead(Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 367
    iget-object v3, p1, Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    .line 368
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v1, v2

    .line 369
    :goto_0
    if-ge v1, v4, :cond_1

    .line 370
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;

    .line 371
    iget v5, v0, Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;->type:I

    sget v6, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_pssh:I

    if-ne v5, v6, :cond_0

    .line 372
    iget-object v0, v0, Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 373
    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 374
    new-instance v5, Ljava/util/UUID;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readLong()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readLong()J

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Ljava/util/UUID;-><init>(JJ)V

    .line 375
    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 376
    new-array v7, v6, [B

    .line 377
    invoke-virtual {v0, v7, v2, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 378
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->psshData:Ljava/util/HashMap;

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 381
    :cond_1
    sget v0, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_mvex:I

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;

    move-result-object v0

    .line 382
    sget v1, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_trex:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v0}, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->parseTrex(Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/chunk/parser/mp4/DefaultSampleValues;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->extendsDefaults:Lcom/google/android/exoplayer/chunk/parser/mp4/DefaultSampleValues;

    .line 383
    sget v0, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_trak:I

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;

    move-result-object v0

    sget v1, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_mvhd:I

    .line 384
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;

    move-result-object v1

    .line 383
    invoke-static {v0, v1}, Lcom/google/android/exoplayer/mp4/CommonMp4AtomParsers;->parseTrak(Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;)Lcom/google/android/exoplayer/mp4/Track;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->track:Lcom/google/android/exoplayer/mp4/Track;

    .line 385
    return-void
.end method

.method private static parseMoof(Lcom/google/android/exoplayer/mp4/Track;Lcom/google/android/exoplayer/chunk/parser/mp4/DefaultSampleValues;Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;I[B)V
    .locals 6

    .prologue
    .line 420
    sget v0, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_traf:I

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->parseTraf(Lcom/google/android/exoplayer/mp4/Track;Lcom/google/android/exoplayer/chunk/parser/mp4/DefaultSampleValues;Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;I[B)V

    .line 422
    return-void
.end method

.method private static parseSaiz(Lcom/google/android/exoplayer/chunk/parser/mp4/TrackEncryptionBox;Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;)V
    .locals 9

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 462
    iget v5, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackEncryptionBox;->initializationVectorSize:I

    .line 463
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 464
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 465
    invoke-static {v0}, Lcom/google/android/exoplayer/mp4/Mp4Util;->parseFullAtomFlags(I)I

    move-result v0

    .line 466
    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 467
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skip(I)V

    .line 469
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 471
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    .line 472
    iget v3, p2, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;->length:I

    if-eq v6, v3, :cond_1

    .line 473
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Length mismatch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;->length:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_1
    if-nez v0, :cond_3

    .line 478
    iget-object v7, p2, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    move v3, v2

    move v0, v2

    .line 479
    :goto_0
    if-ge v3, v6, :cond_4

    .line 480
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    .line 481
    add-int v4, v0, v8

    .line 482
    if-le v8, v5, :cond_2

    move v0, v1

    :goto_1
    aput-boolean v0, v7, v3

    .line 479
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v2

    .line 482
    goto :goto_1

    .line 485
    :cond_3
    if-le v0, v5, :cond_5

    .line 486
    :goto_2
    mul-int/2addr v0, v6

    add-int/2addr v0, v2

    .line 487
    iget-object v3, p2, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    invoke-static {v3, v2, v6, v1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 489
    :cond_4
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;->initEncryptionData(I)V

    .line 490
    return-void

    :cond_5
    move v1, v2

    .line 485
    goto :goto_2
.end method

.method private static parseSenc(Lcom/google/android/exoplayer/util/ParsableByteArray;ILcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 625
    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 626
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 627
    invoke-static {v0}, Lcom/google/android/exoplayer/mp4/Mp4Util;->parseFullAtomFlags(I)I

    move-result v0

    .line 629
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    .line 631
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Overriding TrackEncryptionBox parameters is unsupported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 634
    :cond_0
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 635
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    .line 636
    iget v3, p2, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;->length:I

    if-eq v2, v3, :cond_2

    .line 637
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Length mismatch: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;->length:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v1

    .line 634
    goto :goto_0

    .line 640
    :cond_2
    iget-object v3, p2, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    invoke-static {v3, v1, v2, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 641
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;->initEncryptionData(I)V

    .line 642
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;->fillEncryptionData(Lcom/google/android/exoplayer/util/ParsableByteArray;)V

    .line 643
    return-void
.end method

.method private static parseSenc(Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;)V
    .locals 1

    .prologue
    .line 621
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->parseSenc(Lcom/google/android/exoplayer/util/ParsableByteArray;ILcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;)V

    .line 622
    return-void
.end method

.method private static parseSidx(Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/chunk/parser/SegmentIndex;
    .locals 20

    .prologue
    .line 649
    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 650
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 651
    invoke-static {v2}, Lcom/google/android/exoplayer/mp4/Mp4Util;->parseFullAtomVersion(I)I

    move-result v2

    .line 653
    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skip(I)V

    .line 654
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    .line 657
    if-nez v2, :cond_0

    .line 658
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    .line 659
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    move-wide v8, v2

    move-wide v2, v4

    .line 665
    :goto_0
    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skip(I)V

    .line 667
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v14

    .line 668
    new-array v15, v14, [I

    .line 669
    new-array v0, v14, [J

    move-object/from16 v16, v0

    .line 670
    new-array v0, v14, [J

    move-object/from16 v17, v0

    .line 671
    new-array v0, v14, [J

    move-object/from16 v18, v0

    .line 675
    const-wide/32 v4, 0xf4240

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    .line 676
    const/4 v4, 0x0

    move-wide v12, v8

    move v8, v4

    move-wide v4, v2

    move-wide v2, v10

    :goto_1
    if-ge v8, v14, :cond_2

    .line 677
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v9

    .line 679
    const/high16 v10, -0x80000000

    and-int/2addr v10, v9

    .line 680
    if-eqz v10, :cond_1

    .line 681
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Unhandled indirect reference"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 661
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v4

    .line 662
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v2

    move-wide v8, v2

    move-wide v2, v4

    goto :goto_0

    .line 683
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v10

    .line 685
    const v19, 0x7fffffff

    and-int v9, v9, v19

    aput v9, v15, v8

    .line 686
    aput-wide v12, v16, v8

    .line 690
    aput-wide v2, v18, v8

    .line 691
    add-long v2, v4, v10

    .line 692
    const-wide/32 v4, 0xf4240

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    .line 693
    aget-wide v4, v18, v8

    sub-long v4, v10, v4

    aput-wide v4, v17, v8

    .line 695
    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skip(I)V

    .line 696
    aget v4, v15, v8

    int-to-long v4, v4

    add-long/2addr v12, v4

    .line 676
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    move-wide v4, v2

    move-wide v2, v10

    goto :goto_1

    .line 699
    :cond_2
    new-instance v2, Lcom/google/android/exoplayer/chunk/parser/SegmentIndex;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v3

    move-object v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer/chunk/parser/SegmentIndex;-><init>(I[I[J[J[J)V

    return-object v2
.end method

.method private static parseTfdt(Lcom/google/android/exoplayer/util/ParsableByteArray;)J
    .locals 2

    .prologue
    .line 529
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 530
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 531
    invoke-static {v0}, Lcom/google/android/exoplayer/mp4/Mp4Util;->parseFullAtomVersion(I)I

    move-result v0

    .line 532
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    goto :goto_0
.end method

.method private static parseTfhd(Lcom/google/android/exoplayer/chunk/parser/mp4/DefaultSampleValues;Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/chunk/parser/mp4/DefaultSampleValues;
    .locals 5

    .prologue
    const/16 v1, 0x8

    .line 500
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 501
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 502
    invoke-static {v0}, Lcom/google/android/exoplayer/mp4/Mp4Util;->parseFullAtomFlags(I)I

    move-result v4

    .line 504
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skip(I)V

    .line 505
    and-int/lit8 v0, v4, 0x1

    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skip(I)V

    .line 509
    :cond_0
    and-int/lit8 v0, v4, 0x2

    if-eqz v0, :cond_1

    .line 511
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    .line 512
    :goto_0
    and-int/lit8 v0, v4, 0x8

    if-eqz v0, :cond_2

    .line 513
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    move v2, v0

    .line 514
    :goto_1
    and-int/lit8 v0, v4, 0x10

    if-eqz v0, :cond_3

    .line 515
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    move v1, v0

    .line 516
    :goto_2
    and-int/lit8 v0, v4, 0x20

    if-eqz v0, :cond_4

    .line 517
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 518
    :goto_3
    new-instance v4, Lcom/google/android/exoplayer/chunk/parser/mp4/DefaultSampleValues;

    invoke-direct {v4, v3, v2, v1, v0}, Lcom/google/android/exoplayer/chunk/parser/mp4/DefaultSampleValues;-><init>(IIII)V

    return-object v4

    .line 511
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    move v3, v0

    goto :goto_0

    .line 513
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/DefaultSampleValues;->duration:I

    move v2, v0

    goto :goto_1

    .line 515
    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/DefaultSampleValues;->size:I

    move v1, v0

    goto :goto_2

    .line 517
    :cond_4
    iget v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/DefaultSampleValues;->flags:I

    goto :goto_3
.end method

.method private static parseTraf(Lcom/google/android/exoplayer/mp4/Track;Lcom/google/android/exoplayer/chunk/parser/mp4/DefaultSampleValues;Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;I[B)V
    .locals 7

    .prologue
    .line 429
    sget v0, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_tfdt:I

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;

    move-result-object v0

    .line 430
    if-nez v0, :cond_3

    const-wide/16 v2, 0x0

    .line 432
    :goto_0
    sget v0, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_tfhd:I

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;

    move-result-object v0

    .line 433
    iget-object v0, v0, Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->parseTfhd(Lcom/google/android/exoplayer/chunk/parser/mp4/DefaultSampleValues;Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/chunk/parser/mp4/DefaultSampleValues;

    move-result-object v1

    .line 434
    iget v0, v1, Lcom/google/android/exoplayer/chunk/parser/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    iput v0, p3, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;->sampleDescriptionIndex:I

    .line 436
    sget v0, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_trun:I

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;

    move-result-object v0

    .line 437
    iget-object v5, v0, Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object v0, p0

    move v4, p4

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->parseTrun(Lcom/google/android/exoplayer/mp4/Track;Lcom/google/android/exoplayer/chunk/parser/mp4/DefaultSampleValues;JILcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;)V

    .line 439
    sget v0, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_saiz:I

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;

    move-result-object v0

    .line 440
    if-eqz v0, :cond_0

    .line 441
    iget-object v2, p0, Lcom/google/android/exoplayer/mp4/Track;->sampleDescriptionEncryptionBoxes:[Lcom/google/android/exoplayer/chunk/parser/mp4/TrackEncryptionBox;

    iget v1, v1, Lcom/google/android/exoplayer/chunk/parser/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    aget-object v1, v2, v1

    .line 443
    iget-object v0, v0, Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v1, v0, p3}, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->parseSaiz(Lcom/google/android/exoplayer/chunk/parser/mp4/TrackEncryptionBox;Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;)V

    .line 446
    :cond_0
    sget v0, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_senc:I

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;

    move-result-object v0

    .line 447
    if-eqz v0, :cond_1

    .line 448
    iget-object v0, v0, Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v0, p3}, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->parseSenc(Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;)V

    .line 451
    :cond_1
    iget-object v0, p2, Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 452
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_4

    .line 453
    iget-object v0, p2, Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;

    .line 454
    iget v3, v0, Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;->type:I

    sget v4, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_uuid:I

    if-ne v3, v4, :cond_2

    .line 455
    iget-object v0, v0, Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v0, p3, p5}, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->parseUuid(Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;[B)V

    .line 452
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 430
    :cond_3
    sget v0, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_tfdt:I

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v0}, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->parseTfdt(Lcom/google/android/exoplayer/util/ParsableByteArray;)J

    move-result-wide v2

    goto :goto_0

    .line 458
    :cond_4
    return-void
.end method

.method private static parseTrex(Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/chunk/parser/mp4/DefaultSampleValues;
    .locals 5

    .prologue
    .line 409
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 410
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 411
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 412
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    .line 413
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 414
    new-instance v4, Lcom/google/android/exoplayer/chunk/parser/mp4/DefaultSampleValues;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/exoplayer/chunk/parser/mp4/DefaultSampleValues;-><init>(IIII)V

    return-object v4
.end method

.method private static parseTrun(Lcom/google/android/exoplayer/mp4/Track;Lcom/google/android/exoplayer/chunk/parser/mp4/DefaultSampleValues;JILcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;)V
    .locals 22

    .prologue
    .line 546
    const/16 v2, 0x8

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 547
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 548
    invoke-static {v2}, Lcom/google/android/exoplayer/mp4/Mp4Util;->parseFullAtomFlags(I)I

    move-result v4

    .line 550
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v13

    .line 551
    and-int/lit8 v2, v4, 0x1

    if-eqz v2, :cond_0

    .line 552
    const/4 v2, 0x4

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skip(I)V

    .line 555
    :cond_0
    and-int/lit8 v2, v4, 0x4

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    .line 556
    :goto_0
    move-object/from16 v0, p1

    iget v6, v0, Lcom/google/android/exoplayer/chunk/parser/mp4/DefaultSampleValues;->flags:I

    .line 557
    if-eqz v2, :cond_1

    .line 558
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    .line 561
    :cond_1
    and-int/lit16 v3, v4, 0x100

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    move v12, v3

    .line 562
    :goto_1
    and-int/lit16 v3, v4, 0x200

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    move v11, v3

    .line 563
    :goto_2
    and-int/lit16 v3, v4, 0x400

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    move v10, v3

    .line 564
    :goto_3
    and-int/lit16 v3, v4, 0x800

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    .line 567
    :goto_4
    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;->initTables(I)V

    .line 568
    move-object/from16 v0, p6

    iget-object v14, v0, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;->sampleSizeTable:[I

    .line 569
    move-object/from16 v0, p6

    iget-object v15, v0, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;->sampleCompositionTimeOffsetTable:[I

    .line 570
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;->sampleDecodingTimeTable:[J

    move-object/from16 v16, v0

    .line 571
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    move-object/from16 v17, v0

    .line 573
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/mp4/Track;->timescale:J

    move-wide/from16 v18, v0

    .line 575
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/mp4/Track;->type:I

    const v5, 0x76696465

    if-ne v4, v5, :cond_8

    and-int/lit8 v4, p4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    const/4 v4, 0x1

    .line 578
    :goto_5
    const/4 v5, 0x0

    move v9, v5

    :goto_6
    if-ge v9, v13, :cond_f

    .line 580
    if-eqz v12, :cond_9

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    move v8, v5

    .line 582
    :goto_7
    if-eqz v11, :cond_a

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    move v7, v5

    .line 583
    :goto_8
    if-nez v9, :cond_b

    if-eqz v2, :cond_b

    move v5, v6

    .line 585
    :goto_9
    if-eqz v3, :cond_d

    .line 591
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v20

    .line 592
    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    div-long v20, v20, v18

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    aput v20, v15, v9

    .line 596
    :goto_a
    const-wide/16 v20, 0x3e8

    mul-long v20, v20, p2

    div-long v20, v20, v18

    aput-wide v20, v16, v9

    .line 597
    aput v7, v14, v9

    .line 598
    shr-int/lit8 v5, v5, 0x10

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_e

    if-eqz v4, :cond_2

    if-nez v9, :cond_e

    :cond_2
    const/4 v5, 0x1

    :goto_b
    aput-boolean v5, v17, v9

    .line 600
    int-to-long v0, v8

    move-wide/from16 v20, v0

    add-long p2, p2, v20

    .line 578
    add-int/lit8 v5, v9, 0x1

    move v9, v5

    goto :goto_6

    .line 555
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 561
    :cond_4
    const/4 v3, 0x0

    move v12, v3

    goto/16 :goto_1

    .line 562
    :cond_5
    const/4 v3, 0x0

    move v11, v3

    goto/16 :goto_2

    .line 563
    :cond_6
    const/4 v3, 0x0

    move v10, v3

    goto/16 :goto_3

    .line 564
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 575
    :cond_8
    const/4 v4, 0x0

    goto :goto_5

    .line 580
    :cond_9
    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/android/exoplayer/chunk/parser/mp4/DefaultSampleValues;->duration:I

    move v8, v5

    goto :goto_7

    .line 582
    :cond_a
    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/android/exoplayer/chunk/parser/mp4/DefaultSampleValues;->size:I

    move v7, v5

    goto :goto_8

    .line 583
    :cond_b
    if-eqz v10, :cond_c

    .line 584
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v5

    goto :goto_9

    :cond_c
    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/android/exoplayer/chunk/parser/mp4/DefaultSampleValues;->flags:I

    goto :goto_9

    .line 594
    :cond_d
    const/16 v20, 0x0

    aput v20, v15, v9

    goto :goto_a

    .line 598
    :cond_e
    const/4 v5, 0x0

    goto :goto_b

    .line 602
    :cond_f
    return-void
.end method

.method private static parseUuid(Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;[B)V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 606
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 607
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 610
    sget-object v0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 618
    :goto_0
    return-void

    .line 617
    :cond_0
    invoke-static {p0, v1, p1}, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->parseSenc(Lcom/google/android/exoplayer/util/ParsableByteArray;ILcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;)V

    goto :goto_0
.end method

.method private readAtomHeader(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;)I
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 272
    iget v3, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->atomBytesRead:I

    rsub-int/lit8 v3, v3, 0x8

    .line 273
    iget-object v4, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v4, v4, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    iget v5, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->atomBytesRead:I

    invoke-interface {p1, v4, v5, v3}, Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;->read([BII)I

    move-result v3

    .line 274
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 312
    :goto_0
    return v0

    .line 277
    :cond_0
    iget v4, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->rootAtomBytesRead:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->rootAtomBytesRead:I

    .line 278
    iget v4, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->atomBytesRead:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->atomBytesRead:I

    .line 279
    iget v3, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->atomBytesRead:I

    if-eq v3, v6, :cond_1

    move v0, v1

    .line 280
    goto :goto_0

    .line 283
    :cond_1
    iget-object v3, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 284
    iget-object v3, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->atomSize:I

    .line 285
    iget-object v3, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->atomType:I

    .line 287
    iget v3, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->atomType:I

    sget v4, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_mdat:I

    if-ne v3, v4, :cond_3

    .line 288
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;

    iget-boolean v1, v1, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    if-eqz v1, :cond_2

    .line 289
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->enterState(I)V

    :goto_1
    move v0, v2

    .line 293
    goto :goto_0

    .line 291
    :cond_2
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->enterState(I)V

    goto :goto_1

    .line 296
    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 297
    sget-object v3, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->PARSED_ATOMS:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 298
    sget-object v3, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->CONTAINER_TYPES:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 299
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->enterState(I)V

    .line 300
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    new-instance v1, Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;

    iget v3, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->atomType:I

    iget v4, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->rootAtomBytesRead:I

    iget v5, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->atomSize:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x8

    int-to-long v4, v4

    invoke-direct {v1, v3, v4, v5}, Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;-><init>(IJ)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    :goto_2
    move v0, v2

    .line 312
    goto :goto_0

    .line 303
    :cond_4
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget v3, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->atomSize:I

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->atomData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 304
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    iget-object v3, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->atomData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v3, v3, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-static {v0, v2, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->enterState(I)V

    goto :goto_2

    .line 308
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->atomData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 309
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->enterState(I)V

    goto :goto_2
.end method

.method private readAtomPayload(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;)I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 317
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->atomData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->atomData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->atomBytesRead:I

    iget v3, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->atomSize:I

    iget v4, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->atomBytesRead:I

    sub-int/2addr v3, v4

    invoke-interface {p1, v0, v1, v3}, Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;->read([BII)I

    move-result v0

    .line 322
    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 323
    const/4 v1, 0x2

    .line 341
    :goto_1
    return v1

    .line 320
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->atomSize:I

    iget v1, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->atomBytesRead:I

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;->skip(I)I

    move-result v0

    goto :goto_0

    .line 325
    :cond_1
    iget v1, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->rootAtomBytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->rootAtomBytesRead:I

    .line 326
    iget v1, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->atomBytesRead:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->atomBytesRead:I

    .line 327
    iget v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->atomBytesRead:I

    iget v1, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->atomSize:I

    if-eq v0, v1, :cond_2

    .line 328
    const/4 v1, 0x1

    goto :goto_1

    .line 332
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->atomData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    if-eqz v0, :cond_4

    .line 333
    new-instance v0, Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;

    iget v1, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->atomType:I

    iget-object v3, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->atomData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v0, v1, v3}, Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;-><init>(ILcom/google/android/exoplayer/util/ParsableByteArray;)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->onLeafAtomRead(Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;)I

    move-result v0

    or-int/2addr v0, v2

    move v1, v0

    .line 336
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;

    iget-wide v4, v0, Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;->endByteOffset:J

    iget v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->rootAtomBytesRead:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    .line 337
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->onContainerAtomRead(Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;)I

    move-result v0

    or-int/2addr v0, v1

    move v1, v0

    goto :goto_2

    .line 340
    :cond_3
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->enterState(I)V

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method private readEncryptionData(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;)I
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;->fillEncryptionData(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;)Z

    move-result v0

    .line 704
    if-nez v0, :cond_0

    .line 705
    const/4 v0, 0x1

    .line 708
    :goto_0
    return v0

    .line 707
    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->enterState(I)V

    .line 708
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readOrSkipSample(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;Lcom/google/android/exoplayer/SampleHolder;)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 729
    iget v1, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->sampleIndex:I

    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;

    iget v2, v2, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;->length:I

    if-lt v1, v2, :cond_0

    .line 731
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->enterState(I)V

    .line 741
    :goto_0
    return v0

    .line 734
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;

    iget-object v0, v0, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;->sampleSizeTable:[I

    iget v1, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->sampleIndex:I

    aget v0, v0, v1

    .line 735
    invoke-interface {p1}, Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;->getAvailableByteCount()J

    move-result-wide v2

    int-to-long v4, v0

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 736
    const/4 v0, 0x1

    goto :goto_0

    .line 738
    :cond_1
    iget v1, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->sampleIndex:I

    iget v2, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->pendingSeekSyncSampleIndex:I

    if-ge v1, v2, :cond_2

    .line 739
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->skipSample(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;I)I

    move-result v0

    goto :goto_0

    .line 741
    :cond_2
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->readSample(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;ILcom/google/android/exoplayer/SampleHolder;)I

    move-result v0

    goto :goto_0
.end method

.method private readSample(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;ILcom/google/android/exoplayer/SampleHolder;)I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 766
    if-nez p3, :cond_0

    .line 767
    const/16 v0, 0x20

    .line 798
    :goto_0
    return v0

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;

    iget v1, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->sampleIndex:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;->getSamplePresentationTime(I)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p3, Lcom/google/android/exoplayer/SampleHolder;->timeUs:J

    .line 770
    iput v4, p3, Lcom/google/android/exoplayer/SampleHolder;->flags:I

    .line 771
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;

    iget-object v0, v0, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    iget v1, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->sampleIndex:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    .line 772
    iget v0, p3, Lcom/google/android/exoplayer/SampleHolder;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p3, Lcom/google/android/exoplayer/SampleHolder;->flags:I

    .line 773
    iget v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->sampleIndex:I

    iput v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->lastSyncSampleIndex:I

    .line 775
    :cond_1
    iget-object v0, p3, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p3, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, p2, :cond_3

    .line 776
    :cond_2
    invoke-virtual {p3, p2}, Lcom/google/android/exoplayer/SampleHolder;->replaceBuffer(I)Z

    .line 778
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;

    iget-boolean v0, v0, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;->definesEncryptionData:Z

    if-eqz v0, :cond_4

    .line 779
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;

    iget-object v0, v0, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;->sampleEncryptionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {p0, v0, p3}, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->readSampleEncryptionData(Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/SampleHolder;)V

    .line 782
    :cond_4
    iget-object v0, p3, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    .line 783
    if-nez v0, :cond_5

    .line 784
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;->skip(I)I

    .line 785
    iput v4, p3, Lcom/google/android/exoplayer/SampleHolder;->size:I

    .line 796
    :goto_1
    iget v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->sampleIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->sampleIndex:I

    .line 797
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->enterState(I)V

    .line 798
    const/4 v0, 0x4

    goto :goto_0

    .line 787
    :cond_5
    invoke-interface {p1, v0, p2}, Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;->read(Ljava/nio/ByteBuffer;I)I

    .line 788
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->track:Lcom/google/android/exoplayer/mp4/Track;

    iget v1, v1, Lcom/google/android/exoplayer/mp4/Track;->type:I

    const v2, 0x76696465

    if-ne v1, v2, :cond_6

    .line 791
    invoke-static {v0, p2}, Lcom/google/android/exoplayer/mp4/Mp4Util;->replaceLengthPrefixesWithAvcStartCodes(Ljava/nio/ByteBuffer;I)V

    .line 793
    :cond_6
    iput p2, p3, Lcom/google/android/exoplayer/SampleHolder;->size:I

    goto :goto_1
.end method

.method private readSampleEncryptionData(Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/SampleHolder;)V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/16 v3, 0x10

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 803
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->track:Lcom/google/android/exoplayer/mp4/Track;

    iget-object v0, v0, Lcom/google/android/exoplayer/mp4/Track;->sampleDescriptionEncryptionBoxes:[Lcom/google/android/exoplayer/chunk/parser/mp4/TrackEncryptionBox;

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;

    iget v1, v1, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;->sampleDescriptionIndex:I

    aget-object v0, v0, v1

    .line 805
    iget-object v4, v0, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackEncryptionBox;->keyId:[B

    .line 806
    iget-boolean v8, v0, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackEncryptionBox;->isEncrypted:Z

    .line 807
    iget v0, v0, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackEncryptionBox;->initializationVectorSize:I

    .line 808
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;

    iget-object v1, v1, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    iget v2, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->sampleIndex:I

    aget-boolean v9, v1, v2

    .line 810
    iget-object v1, p2, Lcom/google/android/exoplayer/SampleHolder;->cryptoInfo:Lcom/google/android/exoplayer/CryptoInfo;

    iget-object v5, v1, Lcom/google/android/exoplayer/CryptoInfo;->iv:[B

    .line 811
    if-eqz v5, :cond_0

    array-length v1, v5

    if-eq v1, v3, :cond_1

    .line 812
    :cond_0
    new-array v5, v3, [B

    .line 814
    :cond_1
    invoke-virtual {p1, v5, v7, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 816
    if-eqz v9, :cond_6

    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    .line 817
    :goto_0
    iget-object v0, p2, Lcom/google/android/exoplayer/SampleHolder;->cryptoInfo:Lcom/google/android/exoplayer/CryptoInfo;

    iget-object v2, v0, Lcom/google/android/exoplayer/CryptoInfo;->numBytesOfClearData:[I

    .line 818
    if-eqz v2, :cond_2

    array-length v0, v2

    if-ge v0, v1, :cond_3

    .line 819
    :cond_2
    new-array v2, v1, [I

    .line 821
    :cond_3
    iget-object v0, p2, Lcom/google/android/exoplayer/SampleHolder;->cryptoInfo:Lcom/google/android/exoplayer/CryptoInfo;

    iget-object v3, v0, Lcom/google/android/exoplayer/CryptoInfo;->numBytesOfEncryptedData:[I

    .line 822
    if-eqz v3, :cond_4

    array-length v0, v3

    if-ge v0, v1, :cond_5

    .line 823
    :cond_4
    new-array v3, v1, [I

    .line 825
    :cond_5
    if-eqz v9, :cond_7

    move v0, v7

    .line 826
    :goto_1
    if-ge v0, v1, :cond_8

    .line 827
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v9

    aput v9, v2, v0

    .line 828
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v9

    aput v9, v3, v0

    .line 826
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    move v1, v6

    .line 816
    goto :goto_0

    .line 831
    :cond_7
    aput v7, v2, v7

    .line 832
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;

    iget-object v0, v0, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;->sampleSizeTable:[I

    iget v9, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->sampleIndex:I

    aget v0, v0, v9

    aput v0, v3, v7

    .line 834
    :cond_8
    iget-object v0, p2, Lcom/google/android/exoplayer/SampleHolder;->cryptoInfo:Lcom/google/android/exoplayer/CryptoInfo;

    if-eqz v8, :cond_a

    :goto_2
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer/CryptoInfo;->set(I[I[I[B[BI)V

    .line 836
    if-eqz v8, :cond_9

    .line 837
    iget v0, p2, Lcom/google/android/exoplayer/SampleHolder;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p2, Lcom/google/android/exoplayer/SampleHolder;->flags:I

    .line 839
    :cond_9
    return-void

    :cond_a
    move v6, v7

    .line 834
    goto :goto_2
.end method

.method private skipSample(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;I)I
    .locals 4

    .prologue
    .line 745
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;

    iget-boolean v0, v0, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;->definesEncryptionData:Z

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;

    iget-object v1, v0, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;->sampleEncryptionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 747
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->track:Lcom/google/android/exoplayer/mp4/Track;

    iget-object v0, v0, Lcom/google/android/exoplayer/mp4/Track;->sampleDescriptionEncryptionBoxes:[Lcom/google/android/exoplayer/chunk/parser/mp4/TrackEncryptionBox;

    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;

    iget v2, v2, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;->sampleDescriptionIndex:I

    aget-object v0, v0, v2

    .line 749
    iget v0, v0, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackEncryptionBox;->initializationVectorSize:I

    .line 750
    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;

    iget-object v2, v2, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    iget v3, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->sampleIndex:I

    aget-boolean v2, v2, v3

    .line 751
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skip(I)V

    .line 752
    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    .line 753
    :goto_0
    if-eqz v2, :cond_0

    .line 754
    mul-int/lit8 v0, v0, 0x6

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skip(I)V

    .line 758
    :cond_0
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;->skip(I)I

    .line 760
    iget v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->sampleIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->sampleIndex:I

    .line 761
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->enterState(I)V

    .line 762
    const/4 v0, 0x0

    return v0

    .line 752
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->track:Lcom/google/android/exoplayer/mp4/Track;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->track:Lcom/google/android/exoplayer/mp4/Track;

    iget-wide v0, v0, Lcom/google/android/exoplayer/mp4/Track;->durationUs:J

    goto :goto_0
.end method

.method public getFormat()Lcom/google/android/exoplayer/MediaFormat;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->track:Lcom/google/android/exoplayer/mp4/Track;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->track:Lcom/google/android/exoplayer/mp4/Track;

    iget-object v0, v0, Lcom/google/android/exoplayer/mp4/Track;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    goto :goto_0
.end method

.method public getIndex()Lcom/google/android/exoplayer/chunk/parser/SegmentIndex;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->segmentIndex:Lcom/google/android/exoplayer/chunk/parser/SegmentIndex;

    return-object v0
.end method

.method public getPsshInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->psshData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->psshData:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public hasRelativeIndexOffsets()Z
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method public read(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;Lcom/google/android/exoplayer/SampleHolder;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 210
    const/4 v0, 0x0

    .line 211
    :goto_0
    and-int/lit8 v1, v0, 0x27

    if-nez v1, :cond_0

    .line 212
    :try_start_0
    iget v1, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->parserState:I

    packed-switch v1, :pswitch_data_0

    .line 223
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->readOrSkipSample(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;Lcom/google/android/exoplayer/SampleHolder;)I

    move-result v1

    or-int/2addr v0, v1

    .line 224
    goto :goto_0

    .line 214
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->readAtomHeader(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;)I

    move-result v1

    or-int/2addr v0, v1

    .line 215
    goto :goto_0

    .line 217
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->readAtomPayload(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;)I

    move-result v1

    or-int/2addr v0, v1

    .line 218
    goto :goto_0

    .line 220
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->readEncryptionData(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    or-int/2addr v0, v1

    .line 221
    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    new-instance v1, Lcom/google/android/exoplayer/ParserException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 227
    :cond_0
    return v0

    .line 212
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public seekTo(JZ)Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 235
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    iput v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->pendingSeekTimeMs:I

    .line 236
    if-eqz p3, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;

    iget v0, v0, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;->length:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->pendingSeekTimeMs:I

    int-to-long v2, v0

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;

    .line 237
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;->getSamplePresentationTime(I)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->pendingSeekTimeMs:I

    int-to-long v2, v0

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;

    iget-object v4, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;

    iget v4, v4, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;->length:I

    add-int/lit8 v4, v4, -0x1

    .line 238
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;->getSamplePresentationTime(I)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3

    move v0, v1

    move v2, v1

    move v3, v1

    .line 241
    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;

    iget v4, v4, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;->length:I

    if-ge v0, v4, :cond_2

    .line 242
    iget-object v4, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;->getSamplePresentationTime(I)J

    move-result-wide v4

    iget v6, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->pendingSeekTimeMs:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    .line 243
    iget-object v3, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;

    iget-object v3, v3, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_0

    move v2, v0

    :cond_0
    move v3, v0

    .line 241
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 249
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->lastSyncSampleIndex:I

    if-ne v2, v0, :cond_3

    iget v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->sampleIndex:I

    if-lt v3, v0, :cond_3

    .line 250
    iput v1, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->pendingSeekTimeMs:I

    .line 256
    :goto_1
    return v1

    .line 254
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 255
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->enterState(I)V

    .line 256
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public setTrack(Lcom/google/android/exoplayer/mp4/Track;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 177
    new-instance v0, Lcom/google/android/exoplayer/chunk/parser/mp4/DefaultSampleValues;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/google/android/exoplayer/chunk/parser/mp4/DefaultSampleValues;-><init>(IIII)V

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->extendsDefaults:Lcom/google/android/exoplayer/chunk/parser/mp4/DefaultSampleValues;

    .line 178
    iput-object p1, p0, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;->track:Lcom/google/android/exoplayer/mp4/Track;

    .line 179
    return-void
.end method
