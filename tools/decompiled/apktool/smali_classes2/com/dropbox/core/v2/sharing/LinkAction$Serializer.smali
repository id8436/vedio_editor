.class Lcom/dropbox/core/v2/sharing/LinkAction$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "LinkAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/LinkAction;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/LinkAction$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/dropbox/core/v2/sharing/LinkAction$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/LinkAction$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/LinkAction$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkAction$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/LinkAction;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 101
    const/4 v1, 0x1

    .line 102
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/LinkAction$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 110
    :goto_0
    if-nez v0, :cond_1

    .line 111
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    const/4 v1, 0x0

    .line 107
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/LinkAction$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 108
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/LinkAction$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 113
    :cond_1
    const-string/jumbo v2, "change_access_level"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 114
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkAction;->CHANGE_ACCESS_LEVEL:Lcom/dropbox/core/v2/sharing/LinkAction;

    .line 134
    :goto_1
    if-nez v1, :cond_2

    .line 135
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/LinkAction$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 136
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/LinkAction$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 138
    :cond_2
    return-object v0

    .line 116
    :cond_3
    const-string/jumbo v2, "change_audience"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 117
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkAction;->CHANGE_AUDIENCE:Lcom/dropbox/core/v2/sharing/LinkAction;

    goto :goto_1

    .line 119
    :cond_4
    const-string/jumbo v2, "remove_expiry"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 120
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkAction;->REMOVE_EXPIRY:Lcom/dropbox/core/v2/sharing/LinkAction;

    goto :goto_1

    .line 122
    :cond_5
    const-string/jumbo v2, "remove_password"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 123
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkAction;->REMOVE_PASSWORD:Lcom/dropbox/core/v2/sharing/LinkAction;

    goto :goto_1

    .line 125
    :cond_6
    const-string/jumbo v2, "set_expiry"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 126
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkAction;->SET_EXPIRY:Lcom/dropbox/core/v2/sharing/LinkAction;

    goto :goto_1

    .line 128
    :cond_7
    const-string/jumbo v2, "set_password"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 129
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkAction;->SET_PASSWORD:Lcom/dropbox/core/v2/sharing/LinkAction;

    goto :goto_1

    .line 132
    :cond_8
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkAction;->OTHER:Lcom/dropbox/core/v2/sharing/LinkAction;

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
    .line 59
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/LinkAction$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/LinkAction;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/LinkAction;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 64
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkAction$1;->$SwitchMap$com$dropbox$core$v2$sharing$LinkAction:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/LinkAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 90
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 93
    :goto_0
    return-void

    .line 66
    :pswitch_0
    const-string/jumbo v0, "change_access_level"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :pswitch_1
    const-string/jumbo v0, "change_audience"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :pswitch_2
    const-string/jumbo v0, "remove_expiry"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :pswitch_3
    const-string/jumbo v0, "remove_password"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :pswitch_4
    const-string/jumbo v0, "set_expiry"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :pswitch_5
    const-string/jumbo v0, "set_password"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
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
    .line 59
    check-cast p1, Lcom/dropbox/core/v2/sharing/LinkAction;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/LinkAction$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/LinkAction;Lcom/d/a/a/g;)V

    return-void
.end method
