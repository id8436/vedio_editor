.class final Lcom/dropbox/core/stone/StoneSerializers$LongSerializer;
.super Lcom/dropbox/core/stone/StoneSerializer;
.source "StoneSerializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StoneSerializer",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/stone/StoneSerializers$LongSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/dropbox/core/stone/StoneSerializers$LongSerializer;

    invoke-direct {v0}, Lcom/dropbox/core/stone/StoneSerializers$LongSerializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/stone/StoneSerializers$LongSerializer;->INSTANCE:Lcom/dropbox/core/stone/StoneSerializers$LongSerializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/dropbox/core/stone/StoneSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p1}, Lcom/d/a/a/k;->n()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 90
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 91
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
    .line 79
    invoke-virtual {p0, p1}, Lcom/dropbox/core/stone/StoneSerializers$LongSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/lang/Long;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/d/a/a/g;->a(J)V

    .line 85
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
    .line 79
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/stone/StoneSerializers$LongSerializer;->serialize(Ljava/lang/Long;Lcom/d/a/a/g;)V

    return-void
.end method
