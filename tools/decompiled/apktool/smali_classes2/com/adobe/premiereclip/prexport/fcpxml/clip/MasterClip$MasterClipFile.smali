.class Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip$MasterClipFile;
.super Ljava/lang/Object;
.source "MasterClip.java"


# instance fields
.field private mName:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mXmlId:Ljava/lang/String;

.field final synthetic this$0:Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip$MasterClipFile;->this$0:Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    iput-object p2, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip$MasterClipFile;->mName:Ljava/lang/String;

    .line 340
    iput-object p3, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip$MasterClipFile;->mPath:Ljava/lang/String;

    .line 341
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip$MasterClipFile;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip$MasterClipFile;->mXmlId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip$MasterClipFile;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip$MasterClipFile;->mXmlId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip$MasterClipFile;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip$MasterClipFile;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip$MasterClipFile;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip$MasterClipFile;->mPath:Ljava/lang/String;

    return-object v0
.end method
