.class Lcom/dropbox/core/v2/paper/AddPaperDocUserResult$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "AddPaperDocUserResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 107
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 108
    const/4 v1, 0x1

    .line 109
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 117
    :goto_0
    if-nez v0, :cond_1

    .line 118
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    const/4 v1, 0x0

    .line 114
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 115
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 120
    :cond_1
    const-string/jumbo v2, "success"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 121
    sget-object v0, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;->SUCCESS:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    .line 144
    :goto_1
    if-nez v1, :cond_2

    .line 145
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 146
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 148
    :cond_2
    return-object v0

    .line 123
    :cond_3
    const-string/jumbo v2, "unknown_error"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 124
    sget-object v0, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;->UNKNOWN_ERROR:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    goto :goto_1

    .line 126
    :cond_4
    const-string/jumbo v2, "sharing_outside_team_disabled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 127
    sget-object v0, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;->SHARING_OUTSIDE_TEAM_DISABLED:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    goto :goto_1

    .line 129
    :cond_5
    const-string/jumbo v2, "daily_limit_reached"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 130
    sget-object v0, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;->DAILY_LIMIT_REACHED:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    goto :goto_1

    .line 132
    :cond_6
    const-string/jumbo v2, "user_is_owner"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 133
    sget-object v0, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;->USER_IS_OWNER:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    goto :goto_1

    .line 135
    :cond_7
    const-string/jumbo v2, "failed_user_data_retrieval"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 136
    sget-object v0, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;->FAILED_USER_DATA_RETRIEVAL:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    goto :goto_1

    .line 138
    :cond_8
    const-string/jumbo v2, "permission_already_granted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 139
    sget-object v0, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;->PERMISSION_ALREADY_GRANTED:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    goto :goto_1

    .line 142
    :cond_9
    sget-object v0, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;->OTHER:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

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
    .line 62
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 67
    sget-object v0, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult$1;->$SwitchMap$com$dropbox$core$v2$paper$AddPaperDocUserResult:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 97
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 100
    :goto_0
    return-void

    .line 69
    :pswitch_0
    const-string/jumbo v0, "success"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :pswitch_1
    const-string/jumbo v0, "unknown_error"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :pswitch_2
    const-string/jumbo v0, "sharing_outside_team_disabled"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :pswitch_3
    const-string/jumbo v0, "daily_limit_reached"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :pswitch_4
    const-string/jumbo v0, "user_is_owner"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :pswitch_5
    const-string/jumbo v0, "failed_user_data_retrieval"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :pswitch_6
    const-string/jumbo v0, "permission_already_granted"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
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
    .line 62
    check-cast p1, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult$Serializer;->serialize(Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;Lcom/d/a/a/g;)V

    return-void
.end method
