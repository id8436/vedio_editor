.class public Lcom/google/api/gbase/client/GoogleBaseAttributeId;
.super Ljava/lang/Object;
.source "GoogleBaseAttributeId.java"


# instance fields
.field private final name:Ljava/lang/String;

.field private final type:Lcom/google/api/gbase/client/GoogleBaseAttributeType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    if-nez p1, :cond_0

    .line 33
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "attribute \'name\' is required"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/google/api/gbase/client/GoogleBaseAttributeId;->name:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/google/api/gbase/client/GoogleBaseAttributeId;->type:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    .line 37
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 73
    instance-of v1, p1, Lcom/google/api/gbase/client/GoogleBaseAttributeId;

    if-nez v1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v0

    .line 77
    :cond_1
    check-cast p1, Lcom/google/api/gbase/client/GoogleBaseAttributeId;

    .line 78
    iget-object v1, p0, Lcom/google/api/gbase/client/GoogleBaseAttributeId;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/api/gbase/client/GoogleBaseAttributeId;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/google/api/gbase/client/GoogleBaseAttributeId;->type:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    if-nez v1, :cond_2

    .line 83
    iget-object v1, p1, Lcom/google/api/gbase/client/GoogleBaseAttributeId;->type:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttributeId;->type:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    iget-object v1, p1, Lcom/google/api/gbase/client/GoogleBaseAttributeId;->type:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-virtual {v0, v1}, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttributeId;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/google/api/gbase/client/GoogleBaseAttributeType;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttributeId;->type:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttributeId;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x13

    .line 65
    iget-object v1, p0, Lcom/google/api/gbase/client/GoogleBaseAttributeId;->type:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    if-eqz v1, :cond_0

    .line 66
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/google/api/gbase/client/GoogleBaseAttributeId;->type:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-virtual {v1}, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 68
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttributeId;->type:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttributeId;->name:Ljava/lang/String;

    .line 58
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/api/gbase/client/GoogleBaseAttributeId;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/gbase/client/GoogleBaseAttributeId;->type:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
