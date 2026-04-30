.class final Lcom/dropbox/core/stone/StoneSerializers$IntSerializer;
.super Lcom/dropbox/core/stone/StoneSerializer;
.source "StoneSerializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StoneSerializer",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/stone/StoneSerializers$IntSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/dropbox/core/stone/StoneSerializers$IntSerializer;

    invoke-direct {v0}, Lcom/dropbox/core/stone/StoneSerializers$IntSerializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/stone/StoneSerializers$IntSerializer;->INSTANCE:Lcom/dropbox/core/stone/StoneSerializers$IntSerializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/dropbox/core/stone/StoneSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p1}, Lcom/d/a/a/k;->m()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 106
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 107
    return-object v0
.end method

.method public bridge synthetic deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/dropbox/core/stone/StoneSerializers$IntSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/lang/Integer;Lcom/d/a/a/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->c(I)V

    .line 101
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 95
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/stone/StoneSerializers$IntSerializer;->serialize(Ljava/lang/Integer;Lcom/d/a/a/g;)V

    return-void
.end method
