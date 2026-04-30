.class public Lcom/google/gdata/util/common/base/Pair;
.super Ljava/lang/Object;
.source "Pair.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xa60d052d8237f63L


# instance fields
.field public final first:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field public final second:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/gdata/util/common/base/Pair;->first:Ljava/lang/Object;

    .line 49
    iput-object p2, p0, Lcom/google/gdata/util/common/base/Pair;->second:Ljava/lang/Object;

    .line 50
    return-void
.end method

.method private static eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 105
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static hash(Ljava/lang/Object;I)I
    .locals 0

    .prologue
    .line 109
    if-nez p0, :cond_0

    :goto_0
    return p1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    goto :goto_0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/gdata/util/common/base/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(TA;TB;)",
            "Lcom/google/gdata/util/common/base/Pair",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lcom/google/gdata/util/common/base/Pair;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/util/common/base/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public clone()Lcom/google/gdata/util/common/base/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gdata/util/common/base/Pair",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 64
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/util/common/base/Pair;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/gdata/util/common/base/Pair;->clone()Lcom/google/gdata/util/common/base/Pair;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 78
    instance-of v1, p1, Lcom/google/gdata/util/common/base/Pair;

    if-eqz v1, :cond_0

    .line 79
    check-cast p1, Lcom/google/gdata/util/common/base/Pair;

    .line 80
    iget-object v1, p0, Lcom/google/gdata/util/common/base/Pair;->first:Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/gdata/util/common/base/Pair;->first:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/gdata/util/common/base/Pair;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/gdata/util/common/base/Pair;->second:Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/gdata/util/common/base/Pair;->second:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/gdata/util/common/base/Pair;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 82
    :cond_0
    return v0
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/gdata/util/common/base/Pair;->first:Ljava/lang/Object;

    return-object v0
.end method

.method public getSecond()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/gdata/util/common/base/Pair;->second:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    iget-object v0, p0, Lcom/google/gdata/util/common/base/Pair;->first:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/gdata/util/common/base/Pair;->hash(Ljava/lang/Object;I)I

    move-result v0

    const v1, -0x21524111

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/gdata/util/common/base/Pair;->second:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/gdata/util/common/base/Pair;->hash(Ljava/lang/Object;I)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 100
    const-string/jumbo v0, "(%s, %s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/gdata/util/common/base/Pair;->first:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/gdata/util/common/base/Pair;->second:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
