.class Lcom/adobe/premiereclip/dcx/DCXReader$DCXClipNode;
.super Ljava/lang/Object;
.source "DCXReader.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field clip:Lcom/adobe/premiereclip/project/sequence/Clip;

.field sortableValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/project/sequence/Clip;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 702
    iput-object p1, p0, Lcom/adobe/premiereclip/dcx/DCXReader$DCXClipNode;->clip:Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 703
    iput-object p2, p0, Lcom/adobe/premiereclip/dcx/DCXReader$DCXClipNode;->sortableValue:Ljava/lang/String;

    .line 704
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 716
    check-cast p1, Lcom/adobe/premiereclip/dcx/DCXReader$DCXClipNode;

    invoke-virtual {p1}, Lcom/adobe/premiereclip/dcx/DCXReader$DCXClipNode;->getSortableValue()Ljava/lang/String;

    move-result-object v0

    .line 717
    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXReader$DCXClipNode;->sortableValue:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getClip()Lcom/adobe/premiereclip/project/sequence/Clip;
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXReader$DCXClipNode;->clip:Lcom/adobe/premiereclip/project/sequence/Clip;

    return-object v0
.end method

.method public getSortableValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXReader$DCXClipNode;->sortableValue:Ljava/lang/String;

    return-object v0
.end method
