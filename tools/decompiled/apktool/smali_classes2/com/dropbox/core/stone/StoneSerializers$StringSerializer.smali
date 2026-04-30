.class final Lcom/dropbox/core/stone/StoneSerializers$StringSerializer;
.super Lcom/dropbox/core/stone/StoneSerializer;
.source "StoneSerializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StoneSerializer",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/stone/StoneSerializers$StringSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 176
    new-instance v0, Lcom/dropbox/core/stone/StoneSerializers$StringSerializer;

    invoke-direct {v0}, Lcom/dropbox/core/stone/StoneSerializers$StringSerializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/stone/StoneSerializers$StringSerializer;->INSTANCE:Lcom/dropbox/core/stone/StoneSerializers$StringSerializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 175
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
    .line 175
    invoke-virtual {p0, p1}, Lcom/dropbox/core/stone/StoneSerializers$StringSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/d/a/a/k;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 185
    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializers$StringSerializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 187
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
    .line 175
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/stone/StoneSerializers$StringSerializer;->serialize(Ljava/lang/String;Lcom/d/a/a/g;)V

    return-void
.end method

.method public serialize(Ljava/lang/String;Lcom/d/a/a/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 180
    invoke-virtual {p2, p1}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 181
    return-void
.end method
