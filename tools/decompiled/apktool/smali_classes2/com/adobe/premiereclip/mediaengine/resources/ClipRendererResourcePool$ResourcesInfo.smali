.class Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool$ResourcesInfo;
.super Ljava/lang/Object;
.source "ClipRendererResourcePool.java"


# instance fields
.field private clipRendererResources:Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;

.field private mappedClip:I

.field private trackIndex:I


# direct methods
.method private constructor <init>(Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;II)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool$ResourcesInfo;->clipRendererResources:Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;

    .line 39
    iput p2, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool$ResourcesInfo;->mappedClip:I

    .line 40
    iput p3, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool$ResourcesInfo;->trackIndex:I

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;IILcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool$1;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool$ResourcesInfo;-><init>(Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;II)V

    return-void
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool$ResourcesInfo;)Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool$ResourcesInfo;->clipRendererResources:Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool$ResourcesInfo;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool$ResourcesInfo;->mappedClip:I

    return v0
.end method

.method static synthetic access$202(Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool$ResourcesInfo;I)I
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool$ResourcesInfo;->mappedClip:I

    return p1
.end method

.method static synthetic access$300(Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool$ResourcesInfo;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool$ResourcesInfo;->trackIndex:I

    return v0
.end method

.method static synthetic access$302(Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool$ResourcesInfo;I)I
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool$ResourcesInfo;->trackIndex:I

    return p1
.end method
