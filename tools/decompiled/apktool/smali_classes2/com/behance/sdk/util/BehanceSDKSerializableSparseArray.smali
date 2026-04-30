.class public Lcom/behance/sdk/util/BehanceSDKSerializableSparseArray;
.super Landroid/util/SparseArray;
.source "BehanceSDKSerializableSparseArray.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/util/SparseArray",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xb6fa29ec742fa30L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/util/SparseArray;-><init>(I)V

    .line 16
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 63
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    move v3, v1

    :goto_0
    if-ltz v3, :cond_0

    .line 64
    aget-object v1, v0, v3

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 65
    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x1

    aget-object v1, v1, v4

    invoke-virtual {p0, v2, v1}, Lcom/behance/sdk/util/BehanceSDKSerializableSparseArray;->append(ILjava/lang/Object;)V

    .line 63
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/behance/sdk/util/BehanceSDKSerializableSparseArray;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/Object;

    .line 38
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 39
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/util/BehanceSDKSerializableSparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0, v0}, Lcom/behance/sdk/util/BehanceSDKSerializableSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    .line 40
    aput-object v2, v1, v0

    .line 38
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 43
    return-void
.end method
