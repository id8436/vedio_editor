.class public final Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;
.super Lcom/adobe/customextractor/Util/Atom/Atom;
.source "Atom.java"


# instance fields
.field public final containerChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;",
            ">;"
        }
    .end annotation
.end field

.field public final endByteOffset:J

.field public final leafChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adobe/customextractor/Util/Atom/Atom$LeafAtom;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IJ)V
    .locals 2

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/adobe/customextractor/Util/Atom/Atom;-><init>(I)V

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    .line 116
    iput-wide p2, p0, Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;->endByteOffset:J

    .line 117
    return-void
.end method


# virtual methods
.method public add(Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;)V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    return-void
.end method

.method public add(Lcom/adobe/customextractor/Util/Atom/Atom$LeafAtom;)V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    return-void
.end method

.method public getContainerAtomOfType(I)Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;
    .locals 4

    .prologue
    .line 139
    iget-object v0, p0, Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 140
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 141
    iget-object v0, p0, Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;

    .line 142
    iget v3, v0, Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;->type:I

    if-ne v3, p1, :cond_0

    .line 146
    :goto_1
    return-object v0

    .line 140
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 146
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getLeafAtomOfType(I)Lcom/adobe/customextractor/Util/Atom/Atom$LeafAtom;
    .locals 4

    .prologue
    .line 128
    iget-object v0, p0, Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 129
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 130
    iget-object v0, p0, Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/customextractor/Util/Atom/Atom$LeafAtom;

    .line 131
    iget v3, v0, Lcom/adobe/customextractor/Util/Atom/Atom$LeafAtom;->type:I

    if-ne v3, p1, :cond_0

    .line 135
    :goto_1
    return-object v0

    .line 129
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 135
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;->type:I

    invoke-static {v1}, Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " leaves: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    new-array v2, v3, [Lcom/adobe/customextractor/Util/Atom/Atom$LeafAtom;

    .line 152
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " containers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    new-array v2, v3, [Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;

    .line 153
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    return-object v0
.end method
