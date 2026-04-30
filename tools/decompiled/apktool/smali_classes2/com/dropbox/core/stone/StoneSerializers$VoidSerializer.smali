.class final Lcom/dropbox/core/stone/StoneSerializers$VoidSerializer;
.super Lcom/dropbox/core/stone/StoneSerializer;
.source "StoneSerializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StoneSerializer",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/stone/StoneSerializers$VoidSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 212
    new-instance v0, Lcom/dropbox/core/stone/StoneSerializers$VoidSerializer;

    invoke-direct {v0}, Lcom/dropbox/core/stone/StoneSerializers$VoidSerializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/stone/StoneSerializers$VoidSerializer;->INSTANCE:Lcom/dropbox/core/stone/StoneSerializers$VoidSerializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 211
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
    .line 211
    invoke-virtual {p0, p1}, Lcom/dropbox/core/stone/StoneSerializers$VoidSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/d/a/a/k;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 221
    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializers$VoidSerializer;->skipValue(Lcom/d/a/a/k;)V

    .line 222
    const/4 v0, 0x0

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
    .line 211
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/stone/StoneSerializers$VoidSerializer;->serialize(Ljava/lang/Void;Lcom/d/a/a/g;)V

    return-void
.end method

.method public serialize(Ljava/lang/Void;Lcom/d/a/a/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 216
    invoke-virtual {p2}, Lcom/d/a/a/g;->g()V

    .line 217
    return-void
.end method
