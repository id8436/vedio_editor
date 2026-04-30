.class public Lcom/behance/sdk/project/modules/EmbedModule;
.super Lcom/behance/sdk/project/modules/BaseModule;
.source "EmbedModule.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x206e1c1d40c71348L


# instance fields
.field private embedContentTxt:Ljava/lang/String;

.field private order:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/behance/sdk/project/modules/BaseModule;-><init>()V

    .line 37
    const-string/jumbo v0, "src=\"//"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const-string/jumbo v0, "src=\"//"

    const-string/jumbo v1, "src=\"http://"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/project/modules/EmbedModule;->embedContentTxt:Ljava/lang/String;

    .line 41
    :goto_0
    return-void

    .line 40
    :cond_0
    iput-object p1, p0, Lcom/behance/sdk/project/modules/EmbedModule;->embedContentTxt:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Embed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/behance/sdk/project/modules/EmbedModule;->order:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmbedContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/behance/sdk/project/modules/EmbedModule;->embedContentTxt:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/behance/sdk/project/modules/EmbedModule;->order:I

    return v0
.end method

.method public getSubDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/behance/sdk/project/modules/EmbedModule;->order:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".behance.net"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/behance/sdk/project/modules/ProjectModuleTypes;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/behance/sdk/project/modules/ProjectModuleTypes;->EMBED:Lcom/behance/sdk/project/modules/ProjectModuleTypes;

    return-object v0
.end method

.method public setOrder(I)V
    .locals 0

    .prologue
    .line 66
    iput p1, p0, Lcom/behance/sdk/project/modules/EmbedModule;->order:I

    .line 67
    return-void
.end method
