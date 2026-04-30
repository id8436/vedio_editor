.class public Lcom/dropbox/core/v2/auth/RateLimitError$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "RateLimitError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/auth/RateLimitError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/auth/RateLimitError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    new-instance v0, Lcom/dropbox/core/v2/auth/RateLimitError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/auth/RateLimitError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/auth/RateLimitError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/auth/RateLimitError$Serializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/auth/RateLimitError;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 150
    .line 151
    if-nez p2, :cond_6

    .line 152
    invoke-static {p1}, Lcom/dropbox/core/v2/auth/RateLimitError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 153
    invoke-static {p1}, Lcom/dropbox/core/v2/auth/RateLimitError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 155
    :goto_0
    if-nez v0, :cond_5

    .line 157
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 158
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v2

    sget-object v3, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v2, v3, :cond_2

    .line 159
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v2

    .line 160
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 161
    const-string/jumbo v3, "reason"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    sget-object v1, Lcom/dropbox/core/v2/auth/RateLimitReason$Serializer;->INSTANCE:Lcom/dropbox/core/v2/auth/RateLimitReason$Serializer;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/auth/RateLimitReason$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/auth/RateLimitReason;

    move-result-object v1

    goto :goto_1

    .line 164
    :cond_0
    const-string/jumbo v3, "retry_after"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    goto :goto_1

    .line 168
    :cond_1
    invoke-static {p1}, Lcom/dropbox/core/v2/auth/RateLimitError$Serializer;->skipValue(Lcom/d/a/a/k;)V

    goto :goto_1

    .line 171
    :cond_2
    if-nez v1, :cond_3

    .line 172
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"reason\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_3
    new-instance v2, Lcom/dropbox/core/v2/auth/RateLimitError;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v2, v1, v4, v5}, Lcom/dropbox/core/v2/auth/RateLimitError;-><init>(Lcom/dropbox/core/v2/auth/RateLimitReason;J)V

    .line 179
    if-nez p2, :cond_4

    .line 180
    invoke-static {p1}, Lcom/dropbox/core/v2/auth/RateLimitError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 182
    :cond_4
    return-object v2

    .line 177
    :cond_5
    new-instance v1, Lcom/d/a/a/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No subtype found that matches tag: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v1

    :cond_6
    move-object v0, v1

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
    .line 130
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/auth/RateLimitError$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/auth/RateLimitError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/auth/RateLimitError;Lcom/d/a/a/g;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 135
    if-nez p3, :cond_0

    .line 136
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 138
    :cond_0
    const-string/jumbo v0, "reason"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 139
    sget-object v0, Lcom/dropbox/core/v2/auth/RateLimitReason$Serializer;->INSTANCE:Lcom/dropbox/core/v2/auth/RateLimitReason$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/auth/RateLimitError;->reason:Lcom/dropbox/core/v2/auth/RateLimitReason;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/auth/RateLimitReason$Serializer;->serialize(Lcom/dropbox/core/v2/auth/RateLimitReason;Lcom/d/a/a/g;)V

    .line 140
    const-string/jumbo v0, "retry_after"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 141
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-wide v2, p1, Lcom/dropbox/core/v2/auth/RateLimitError;->retryAfter:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 142
    if-nez p3, :cond_1

    .line 143
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 145
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
    .line 130
    check-cast p1, Lcom/dropbox/core/v2/auth/RateLimitError;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/auth/RateLimitError$Serializer;->serialize(Lcom/dropbox/core/v2/auth/RateLimitError;Lcom/d/a/a/g;Z)V

    return-void
.end method
