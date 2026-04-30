.class Lcom/adobe/sync/ComponentManagerHelper$PairKey;
.super Ljava/lang/Object;
.source "ComponentManagerHelper.java"


# instance fields
.field private assetUrl:Ljava/lang/String;

.field private createdDate:Ljava/lang/String;

.field final synthetic this$0:Lcom/adobe/sync/ComponentManagerHelper;


# direct methods
.method public constructor <init>(Lcom/adobe/sync/ComponentManagerHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/adobe/sync/ComponentManagerHelper$PairKey;->this$0:Lcom/adobe/sync/ComponentManagerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p2, p0, Lcom/adobe/sync/ComponentManagerHelper$PairKey;->assetUrl:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/adobe/sync/ComponentManagerHelper$PairKey;->createdDate:Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 67
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/adobe/sync/ComponentManagerHelper$PairKey;

    if-eqz v1, :cond_0

    .line 68
    check-cast p1, Lcom/adobe/sync/ComponentManagerHelper$PairKey;

    .line 69
    iget-object v1, p0, Lcom/adobe/sync/ComponentManagerHelper$PairKey;->assetUrl:Ljava/lang/String;

    iget-object v2, p1, Lcom/adobe/sync/ComponentManagerHelper$PairKey;->assetUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/sync/ComponentManagerHelper$PairKey;->createdDate:Ljava/lang/String;

    iget-object v2, p1, Lcom/adobe/sync/ComponentManagerHelper$PairKey;->createdDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 71
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adobe/sync/ComponentManagerHelper$PairKey;->assetUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/sync/ComponentManagerHelper$PairKey;->createdDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
