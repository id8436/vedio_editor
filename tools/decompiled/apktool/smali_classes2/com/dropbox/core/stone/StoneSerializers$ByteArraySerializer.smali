.class final Lcom/dropbox/core/stone/StoneSerializers$ByteArraySerializer;
.super Lcom/dropbox/core/stone/StoneSerializer;
.source "StoneSerializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StoneSerializer",
        "<[B>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/stone/StoneSerializers$ByteArraySerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 160
    new-instance v0, Lcom/dropbox/core/stone/StoneSerializers$ByteArraySerializer;

    invoke-direct {v0}, Lcom/dropbox/core/stone/StoneSerializers$ByteArraySerializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/stone/StoneSerializers$ByteArraySerializer;->INSTANCE:Lcom/dropbox/core/stone/StoneSerializers$ByteArraySerializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/dropbox/core/stone/StoneSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Lcom/dropbox/core/stone/StoneSerializers$ByteArraySerializer;->deserialize(Lcom/d/a/a/k;)[B

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/d/a/a/k;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p1}, Lcom/d/a/a/k;->t()[B

    move-result-object v0

    .line 170
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 171
    return-object v0
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
    .line 159
    check-cast p1, [B

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/stone/StoneSerializers$ByteArraySerializer;->serialize([BLcom/d/a/a/g;)V

    return-void
.end method

.method public serialize([BLcom/d/a/a/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p2, p1}, Lcom/d/a/a/g;->a([B)V

    .line 165
    return-void
.end method
