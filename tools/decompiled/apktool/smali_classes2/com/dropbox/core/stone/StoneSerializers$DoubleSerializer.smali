.class final Lcom/dropbox/core/stone/StoneSerializers$DoubleSerializer;
.super Lcom/dropbox/core/stone/StoneSerializer;
.source "StoneSerializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StoneSerializer",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/stone/StoneSerializers$DoubleSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/dropbox/core/stone/StoneSerializers$DoubleSerializer;

    invoke-direct {v0}, Lcom/dropbox/core/stone/StoneSerializers$DoubleSerializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/stone/StoneSerializers$DoubleSerializer;->INSTANCE:Lcom/dropbox/core/stone/StoneSerializers$DoubleSerializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/dropbox/core/stone/StoneSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Ljava/lang/Double;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 121
    invoke-virtual {p1}, Lcom/d/a/a/k;->q()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 122
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 123
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
    .line 111
    invoke-virtual {p0, p1}, Lcom/dropbox/core/stone/StoneSerializers$DoubleSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/lang/Double;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 116
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/d/a/a/g;->a(D)V

    .line 117
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
    .line 111
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/stone/StoneSerializers$DoubleSerializer;->serialize(Ljava/lang/Double;Lcom/d/a/a/g;)V

    return-void
.end method
