.class Lcom/dropbox/core/v2/team/CustomQuotaError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "CustomQuotaError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/CustomQuotaError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/CustomQuotaError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/dropbox/core/v2/team/CustomQuotaError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/CustomQuotaError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/CustomQuotaError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/CustomQuotaError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/CustomQuotaError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 61
    const/4 v1, 0x1

    .line 62
    invoke-static {p1}, Lcom/dropbox/core/v2/team/CustomQuotaError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 70
    :goto_0
    if-nez v0, :cond_1

    .line 71
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    const/4 v1, 0x0

    .line 67
    invoke-static {p1}, Lcom/dropbox/core/v2/team/CustomQuotaError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 68
    invoke-static {p1}, Lcom/dropbox/core/v2/team/CustomQuotaError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 73
    :cond_1
    const-string/jumbo v2, "too_many_users"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 74
    sget-object v0, Lcom/dropbox/core/v2/team/CustomQuotaError;->TOO_MANY_USERS:Lcom/dropbox/core/v2/team/CustomQuotaError;

    .line 79
    :goto_1
    if-nez v1, :cond_2

    .line 80
    invoke-static {p1}, Lcom/dropbox/core/v2/team/CustomQuotaError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 81
    invoke-static {p1}, Lcom/dropbox/core/v2/team/CustomQuotaError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 83
    :cond_2
    return-object v0

    .line 77
    :cond_3
    sget-object v0, Lcom/dropbox/core/v2/team/CustomQuotaError;->OTHER:Lcom/dropbox/core/v2/team/CustomQuotaError;

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
    .line 39
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/CustomQuotaError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/CustomQuotaError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/CustomQuotaError;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 44
    sget-object v0, Lcom/dropbox/core/v2/team/CustomQuotaError$1;->$SwitchMap$com$dropbox$core$v2$team$CustomQuotaError:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/CustomQuotaError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 50
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 53
    :goto_0
    return-void

    .line 46
    :pswitch_0
    const-string/jumbo v0, "too_many_users"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
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
    .line 39
    check-cast p1, Lcom/dropbox/core/v2/team/CustomQuotaError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/CustomQuotaError$Serializer;->serialize(Lcom/dropbox/core/v2/team/CustomQuotaError;Lcom/d/a/a/g;)V

    return-void
.end method
