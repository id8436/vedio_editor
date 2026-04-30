.class Lcom/dropbox/core/v2/users/GetAccountBatchArg$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "GetAccountBatchArg.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/users/GetAccountBatchArg;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/users/GetAccountBatchArg$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    new-instance v0, Lcom/dropbox/core/v2/users/GetAccountBatchArg$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/users/GetAccountBatchArg$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/users/GetAccountBatchArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/GetAccountBatchArg$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/users/GetAccountBatchArg;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 128
    .line 129
    if-nez p2, :cond_5

    .line 130
    invoke-static {p1}, Lcom/dropbox/core/v2/users/GetAccountBatchArg$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 131
    invoke-static {p1}, Lcom/dropbox/core/v2/users/GetAccountBatchArg$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v1

    .line 133
    :goto_0
    if-nez v1, :cond_4

    .line 135
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v1

    sget-object v2, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v1, v2, :cond_1

    .line 136
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 138
    const-string/jumbo v2, "account_ids"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_1

    .line 142
    :cond_0
    invoke-static {p1}, Lcom/dropbox/core/v2/users/GetAccountBatchArg$Serializer;->skipValue(Lcom/d/a/a/k;)V

    goto :goto_1

    .line 145
    :cond_1
    if-nez v0, :cond_2

    .line 146
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"account_ids\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_2
    new-instance v1, Lcom/dropbox/core/v2/users/GetAccountBatchArg;

    invoke-direct {v1, v0}, Lcom/dropbox/core/v2/users/GetAccountBatchArg;-><init>(Ljava/util/List;)V

    .line 153
    if-nez p2, :cond_3

    .line 154
    invoke-static {p1}, Lcom/dropbox/core/v2/users/GetAccountBatchArg$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 156
    :cond_3
    return-object v1

    .line 151
    :cond_4
    new-instance v0, Lcom/d/a/a/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No subtype found that matches tag: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    :cond_5
    move-object v1, v0

    goto :goto_0
.end method

.method public bridge synthetic deserialize(Lcom/d/a/a/k;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/users/GetAccountBatchArg$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/users/GetAccountBatchArg;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/users/GetAccountBatchArg;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 115
    if-nez p3, :cond_0

    .line 116
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 118
    :cond_0
    const-string/jumbo v0, "account_ids"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/users/GetAccountBatchArg;->accountIds:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 120
    if-nez p3, :cond_1

    .line 121
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 123
    :cond_1
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/d/a/a/g;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 110
    check-cast p1, Lcom/dropbox/core/v2/users/GetAccountBatchArg;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/users/GetAccountBatchArg$Serializer;->serialize(Lcom/dropbox/core/v2/users/GetAccountBatchArg;Lcom/d/a/a/g;Z)V

    return-void
.end method
