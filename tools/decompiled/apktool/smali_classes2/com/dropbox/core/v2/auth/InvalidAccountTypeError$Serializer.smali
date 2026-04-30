.class public Lcom/dropbox/core/v2/auth/InvalidAccountTypeError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "InvalidAccountTypeError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/auth/InvalidAccountTypeError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/dropbox/core/v2/auth/InvalidAccountTypeError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/auth/InvalidAccountTypeError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/auth/InvalidAccountTypeError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/auth/InvalidAccountTypeError$Serializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 67
    const/4 v1, 0x1

    .line 68
    invoke-static {p1}, Lcom/dropbox/core/v2/auth/InvalidAccountTypeError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 76
    :goto_0
    if-nez v0, :cond_1

    .line 77
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    const/4 v1, 0x0

    .line 73
    invoke-static {p1}, Lcom/dropbox/core/v2/auth/InvalidAccountTypeError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 74
    invoke-static {p1}, Lcom/dropbox/core/v2/auth/InvalidAccountTypeError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 79
    :cond_1
    const-string/jumbo v2, "endpoint"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 80
    sget-object v0, Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;->ENDPOINT:Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;

    .line 88
    :goto_1
    if-nez v1, :cond_2

    .line 89
    invoke-static {p1}, Lcom/dropbox/core/v2/auth/InvalidAccountTypeError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 90
    invoke-static {p1}, Lcom/dropbox/core/v2/auth/InvalidAccountTypeError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 92
    :cond_2
    return-object v0

    .line 82
    :cond_3
    const-string/jumbo v2, "feature"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 83
    sget-object v0, Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;->FEATURE:Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;

    goto :goto_1

    .line 86
    :cond_4
    sget-object v0, Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;->OTHER:Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;

    goto :goto_1
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
    .line 41
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/auth/InvalidAccountTypeError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 46
    sget-object v0, Lcom/dropbox/core/v2/auth/InvalidAccountTypeError$1;->$SwitchMap$com$dropbox$core$v2$auth$InvalidAccountTypeError:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 56
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 59
    :goto_0
    return-void

    .line 48
    :pswitch_0
    const-string/jumbo v0, "endpoint"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :pswitch_1
    const-string/jumbo v0, "feature"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
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
    .line 41
    check-cast p1, Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/auth/InvalidAccountTypeError$Serializer;->serialize(Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;Lcom/d/a/a/g;)V

    return-void
.end method
