.class Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;
.super Ljava/lang/Object;
.source "SequencePlayer.java"


# instance fields
.field private clipIndex:I

.field private isEnded:Z

.field final synthetic this$0:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/mediaengine/SequencePlayer;IZ)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->this$0:Lcom/adobe/premiereclip/mediaengine/SequencePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p2, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->clipIndex:I

    .line 64
    iput-boolean p3, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->isEnded:Z

    .line 65
    return-void
.end method

.method static synthetic access$300(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;)Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->isEnded:Z

    return v0
.end method

.method static synthetic access$302(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;Z)Z
    .locals 0

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->isEnded:Z

    return p1
.end method

.method static synthetic access$400(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;)I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->clipIndex:I

    return v0
.end method

.method static synthetic access$402(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;I)I
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->clipIndex:I

    return p1
.end method
