.class public Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static MediaTypeStrings:[Ljava/lang/String;

.field public static TransitionAlignmentStrings:[Ljava/lang/String;

.field public static VideoAlphaTypeStrings:[Ljava/lang/String;

.field public static VideoAspectRatioStrings:[Ljava/lang/String;

.field public static VideoFieldDominanceStrings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 114
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "video"

    aput-object v1, v0, v2

    const-string/jumbo v1, "audio"

    aput-object v1, v0, v3

    sput-object v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils;->MediaTypeStrings:[Ljava/lang/String;

    .line 116
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "black"

    aput-object v1, v0, v2

    sput-object v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils;->VideoAlphaTypeStrings:[Ljava/lang/String;

    .line 118
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "square"

    aput-object v1, v0, v2

    sput-object v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils;->VideoAspectRatioStrings:[Ljava/lang/String;

    .line 120
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "upper"

    aput-object v1, v0, v2

    const-string/jumbo v1, "lower"

    aput-object v1, v0, v3

    const-string/jumbo v1, "none"

    aput-object v1, v0, v4

    sput-object v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils;->VideoFieldDominanceStrings:[Ljava/lang/String;

    .line 122
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "start-black"

    aput-object v1, v0, v2

    const-string/jumbo v1, "center"

    aput-object v1, v0, v3

    const-string/jumbo v1, "end-black"

    aput-object v1, v0, v4

    sput-object v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils;->TransitionAlignmentStrings:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEmptyTrackClip(Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;)Z
    .locals 1

    .prologue
    .line 126
    instance-of v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/EmptyAudioTrackClip;

    if-eqz v0, :cond_0

    .line 127
    const/4 v0, 0x1

    .line 129
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
