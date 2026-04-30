.class Lcom/dropbox/core/v2/team/GroupsPollError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "GroupsPollError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/GroupsPollError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/GroupsPollError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/dropbox/core/v2/team/GroupsPollError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupsPollError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/GroupsPollError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupsPollError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/GroupsPollError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 80
    const/4 v1, 0x1

    .line 81
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupsPollError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 89
    :goto_0
    if-nez v0, :cond_1

    .line 90
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    const/4 v1, 0x0

    .line 86
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupsPollError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 87
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupsPollError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 92
    :cond_1
    const-string/jumbo v2, "invalid_async_job_id"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 93
    sget-object v0, Lcom/dropbox/core/v2/team/GroupsPollError;->INVALID_ASYNC_JOB_ID:Lcom/dropbox/core/v2/team/GroupsPollError;

    .line 107
    :goto_1
    if-nez v1, :cond_2

    .line 108
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupsPollError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 109
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupsPollError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 111
    :cond_2
    return-object v0

    .line 95
    :cond_3
    const-string/jumbo v2, "internal_error"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 96
    sget-object v0, Lcom/dropbox/core/v2/team/GroupsPollError;->INTERNAL_ERROR:Lcom/dropbox/core/v2/team/GroupsPollError;

    goto :goto_1

    .line 98
    :cond_4
    const-string/jumbo v2, "other"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 99
    sget-object v0, Lcom/dropbox/core/v2/team/GroupsPollError;->OTHER:Lcom/dropbox/core/v2/team/GroupsPollError;

    goto :goto_1

    .line 101
    :cond_5
    const-string/jumbo v2, "access_denied"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 102
    sget-object v0, Lcom/dropbox/core/v2/team/GroupsPollError;->ACCESS_DENIED:Lcom/dropbox/core/v2/team/GroupsPollError;

    goto :goto_1

    .line 105
    :cond_6
    new-instance v1, Lcom/d/a/a/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v1
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
    .line 46
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/GroupsPollError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/GroupsPollError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/GroupsPollError;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 51
    sget-object v0, Lcom/dropbox/core/v2/team/GroupsPollError$1;->$SwitchMap$com$dropbox$core$v2$team$GroupsPollError:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/GroupsPollError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :pswitch_0
    const-string/jumbo v0, "invalid_async_job_id"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 72
    :goto_0
    return-void

    .line 57
    :pswitch_1
    const-string/jumbo v0, "internal_error"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :pswitch_2
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :pswitch_3
    const-string/jumbo v0, "access_denied"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
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
    .line 46
    check-cast p1, Lcom/dropbox/core/v2/team/GroupsPollError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/GroupsPollError$Serializer;->serialize(Lcom/dropbox/core/v2/team/GroupsPollError;Lcom/d/a/a/g;)V

    return-void
.end method
