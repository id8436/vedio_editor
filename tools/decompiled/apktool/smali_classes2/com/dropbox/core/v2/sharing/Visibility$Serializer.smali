.class Lcom/dropbox/core/v2/sharing/Visibility$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/Visibility;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/Visibility$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/dropbox/core/v2/sharing/Visibility$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/Visibility$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/Visibility$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/Visibility$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/Visibility;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 98
    const/4 v1, 0x1

    .line 99
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/Visibility$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 107
    :goto_0
    if-nez v0, :cond_1

    .line 108
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    const/4 v1, 0x0

    .line 104
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/Visibility$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 105
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/Visibility$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 110
    :cond_1
    const-string/jumbo v2, "public"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 111
    sget-object v0, Lcom/dropbox/core/v2/sharing/Visibility;->PUBLIC:Lcom/dropbox/core/v2/sharing/Visibility;

    .line 128
    :goto_1
    if-nez v1, :cond_2

    .line 129
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/Visibility$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 130
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/Visibility$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 132
    :cond_2
    return-object v0

    .line 113
    :cond_3
    const-string/jumbo v2, "team_only"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 114
    sget-object v0, Lcom/dropbox/core/v2/sharing/Visibility;->TEAM_ONLY:Lcom/dropbox/core/v2/sharing/Visibility;

    goto :goto_1

    .line 116
    :cond_4
    const-string/jumbo v2, "password"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 117
    sget-object v0, Lcom/dropbox/core/v2/sharing/Visibility;->PASSWORD:Lcom/dropbox/core/v2/sharing/Visibility;

    goto :goto_1

    .line 119
    :cond_5
    const-string/jumbo v2, "team_and_password"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 120
    sget-object v0, Lcom/dropbox/core/v2/sharing/Visibility;->TEAM_AND_PASSWORD:Lcom/dropbox/core/v2/sharing/Visibility;

    goto :goto_1

    .line 122
    :cond_6
    const-string/jumbo v2, "shared_folder_only"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 123
    sget-object v0, Lcom/dropbox/core/v2/sharing/Visibility;->SHARED_FOLDER_ONLY:Lcom/dropbox/core/v2/sharing/Visibility;

    goto :goto_1

    .line 126
    :cond_7
    sget-object v0, Lcom/dropbox/core/v2/sharing/Visibility;->OTHER:Lcom/dropbox/core/v2/sharing/Visibility;

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
    .line 60
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/Visibility$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/Visibility;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/Visibility;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 65
    sget-object v0, Lcom/dropbox/core/v2/sharing/Visibility$1;->$SwitchMap$com$dropbox$core$v2$sharing$Visibility:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/Visibility;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 87
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 90
    :goto_0
    return-void

    .line 67
    :pswitch_0
    const-string/jumbo v0, "public"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :pswitch_1
    const-string/jumbo v0, "team_only"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :pswitch_2
    const-string/jumbo v0, "password"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :pswitch_3
    const-string/jumbo v0, "team_and_password"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :pswitch_4
    const-string/jumbo v0, "shared_folder_only"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
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
    .line 60
    check-cast p1, Lcom/dropbox/core/v2/sharing/Visibility;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/Visibility$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/Visibility;Lcom/d/a/a/g;)V

    return-void
.end method
