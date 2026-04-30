.class final Lcom/dropbox/core/stone/StoneSerializers$BooleanSerializer;
.super Lcom/dropbox/core/stone/StoneSerializer;
.source "StoneSerializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StoneSerializer",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/stone/StoneSerializers$BooleanSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 144
    new-instance v0, Lcom/dropbox/core/stone/StoneSerializers$BooleanSerializer;

    invoke-direct {v0}, Lcom/dropbox/core/stone/StoneSerializers$BooleanSerializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/stone/StoneSerializers$BooleanSerializer;->INSTANCE:Lcom/dropbox/core/stone/StoneSerializers$BooleanSerializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/dropbox/core/stone/StoneSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 153
    invoke-virtual {p1}, Lcom/d/a/a/k;->s()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 154
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 155
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
    .line 143
    invoke-virtual {p0, p1}, Lcom/dropbox/core/stone/StoneSerializers$BooleanSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/lang/Boolean;Lcom/d/a/a/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 148
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Z)V

    .line 149
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
    .line 143
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/stone/StoneSerializers$BooleanSerializer;->serialize(Ljava/lang/Boolean;Lcom/d/a/a/g;)V

    return-void
.end method
