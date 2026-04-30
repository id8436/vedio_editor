.class Lcom/dropbox/core/v2/sharing/FileAction$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "FileAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/FileAction;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/FileAction$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileAction$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/FileAction$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/FileAction$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FileAction$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/FileAction;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 125
    const/4 v1, 0x1

    .line 126
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileAction$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 134
    :goto_0
    if-nez v0, :cond_1

    .line 135
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    const/4 v1, 0x0

    .line 131
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileAction$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 132
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileAction$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 137
    :cond_1
    const-string/jumbo v2, "disable_viewer_info"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 138
    sget-object v0, Lcom/dropbox/core/v2/sharing/FileAction;->DISABLE_VIEWER_INFO:Lcom/dropbox/core/v2/sharing/FileAction;

    .line 167
    :goto_1
    if-nez v1, :cond_2

    .line 168
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileAction$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 169
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileAction$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 171
    :cond_2
    return-object v0

    .line 140
    :cond_3
    const-string/jumbo v2, "edit_contents"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 141
    sget-object v0, Lcom/dropbox/core/v2/sharing/FileAction;->EDIT_CONTENTS:Lcom/dropbox/core/v2/sharing/FileAction;

    goto :goto_1

    .line 143
    :cond_4
    const-string/jumbo v2, "enable_viewer_info"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 144
    sget-object v0, Lcom/dropbox/core/v2/sharing/FileAction;->ENABLE_VIEWER_INFO:Lcom/dropbox/core/v2/sharing/FileAction;

    goto :goto_1

    .line 146
    :cond_5
    const-string/jumbo v2, "invite_viewer"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 147
    sget-object v0, Lcom/dropbox/core/v2/sharing/FileAction;->INVITE_VIEWER:Lcom/dropbox/core/v2/sharing/FileAction;

    goto :goto_1

    .line 149
    :cond_6
    const-string/jumbo v2, "invite_viewer_no_comment"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 150
    sget-object v0, Lcom/dropbox/core/v2/sharing/FileAction;->INVITE_VIEWER_NO_COMMENT:Lcom/dropbox/core/v2/sharing/FileAction;

    goto :goto_1

    .line 152
    :cond_7
    const-string/jumbo v2, "unshare"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 153
    sget-object v0, Lcom/dropbox/core/v2/sharing/FileAction;->UNSHARE:Lcom/dropbox/core/v2/sharing/FileAction;

    goto :goto_1

    .line 155
    :cond_8
    const-string/jumbo v2, "relinquish_membership"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 156
    sget-object v0, Lcom/dropbox/core/v2/sharing/FileAction;->RELINQUISH_MEMBERSHIP:Lcom/dropbox/core/v2/sharing/FileAction;

    goto :goto_1

    .line 158
    :cond_9
    const-string/jumbo v2, "share_link"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 159
    sget-object v0, Lcom/dropbox/core/v2/sharing/FileAction;->SHARE_LINK:Lcom/dropbox/core/v2/sharing/FileAction;

    goto :goto_1

    .line 161
    :cond_a
    const-string/jumbo v2, "create_link"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 162
    sget-object v0, Lcom/dropbox/core/v2/sharing/FileAction;->CREATE_LINK:Lcom/dropbox/core/v2/sharing/FileAction;

    goto :goto_1

    .line 165
    :cond_b
    sget-object v0, Lcom/dropbox/core/v2/sharing/FileAction;->OTHER:Lcom/dropbox/core/v2/sharing/FileAction;

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
    .line 71
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/FileAction$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/FileAction;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/FileAction;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 76
    sget-object v0, Lcom/dropbox/core/v2/sharing/FileAction$1;->$SwitchMap$com$dropbox$core$v2$sharing$FileAction:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/FileAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 114
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 117
    :goto_0
    return-void

    .line 78
    :pswitch_0
    const-string/jumbo v0, "disable_viewer_info"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :pswitch_1
    const-string/jumbo v0, "edit_contents"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :pswitch_2
    const-string/jumbo v0, "enable_viewer_info"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :pswitch_3
    const-string/jumbo v0, "invite_viewer"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :pswitch_4
    const-string/jumbo v0, "invite_viewer_no_comment"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :pswitch_5
    const-string/jumbo v0, "unshare"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :pswitch_6
    const-string/jumbo v0, "relinquish_membership"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :pswitch_7
    const-string/jumbo v0, "share_link"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :pswitch_8
    const-string/jumbo v0, "create_link"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 76
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
        :pswitch_7
        :pswitch_8
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
    .line 71
    check-cast p1, Lcom/dropbox/core/v2/sharing/FileAction;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/FileAction$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/FileAction;Lcom/d/a/a/g;)V

    return-void
.end method
