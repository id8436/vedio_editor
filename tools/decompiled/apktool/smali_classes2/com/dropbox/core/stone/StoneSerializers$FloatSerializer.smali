.class final Lcom/dropbox/core/stone/StoneSerializers$FloatSerializer;
.super Lcom/dropbox/core/stone/StoneSerializer;
.source "StoneSerializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StoneSerializer",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/stone/StoneSerializers$FloatSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    new-instance v0, Lcom/dropbox/core/stone/StoneSerializers$FloatSerializer;

    invoke-direct {v0}, Lcom/dropbox/core/stone/StoneSerializers$FloatSerializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/stone/StoneSerializers$FloatSerializer;->INSTANCE:Lcom/dropbox/core/stone/StoneSerializers$FloatSerializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/dropbox/core/stone/StoneSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Ljava/lang/Float;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 137
    invoke-virtual {p1}, Lcom/d/a/a/k;->p()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 138
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 139
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
    .line 127
    invoke-virtual {p0, p1}, Lcom/dropbox/core/stone/StoneSerializers$FloatSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/lang/Float;Lcom/d/a/a/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 132
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(F)V

    .line 133
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
    .line 127
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/stone/StoneSerializers$FloatSerializer;->serialize(Ljava/lang/Float;Lcom/d/a/a/g;)V

    return-void
.end method
