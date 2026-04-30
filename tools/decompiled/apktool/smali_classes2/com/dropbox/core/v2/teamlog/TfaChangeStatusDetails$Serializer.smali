.class Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "TfaChangeStatusDetails.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 221
    new-instance v0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 246
    .line 247
    if-nez p2, :cond_7

    .line 248
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 249
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 251
    :goto_0
    if-nez v0, :cond_6

    move-object v2, v1

    move-object v3, v1

    .line 255
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v4, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v4, :cond_3

    .line 256
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 258
    const-string/jumbo v4, "new_value"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 259
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaConfiguration$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TfaConfiguration$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/teamlog/TfaConfiguration$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    move-result-object v0

    move-object v5, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v5

    :goto_2
    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 270
    goto :goto_1

    .line 261
    :cond_0
    const-string/jumbo v4, "previous_value"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 262
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaConfiguration$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TfaConfiguration$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    move-object v2, v3

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_2

    .line 264
    :cond_1
    const-string/jumbo v4, "used_rescue_code"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    .line 268
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    .line 271
    :cond_3
    if-nez v3, :cond_4

    .line 272
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"new_value\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_4
    new-instance v0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;

    invoke-direct {v0, v3, v2, v1}, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;-><init>(Lcom/dropbox/core/v2/teamlog/TfaConfiguration;Lcom/dropbox/core/v2/teamlog/TfaConfiguration;Ljava/lang/Boolean;)V

    .line 279
    if-nez p2, :cond_5

    .line 280
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 282
    :cond_5
    return-object v0

    .line 277
    :cond_6
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

    :cond_7
    move-object v0, v1

    goto/16 :goto_0
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
    .line 220
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 225
    if-nez p3, :cond_0

    .line 226
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 228
    :cond_0
    const-string/jumbo v0, "new_value"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 229
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaConfiguration$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TfaConfiguration$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->newValue:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/teamlog/TfaConfiguration$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/TfaConfiguration;Lcom/d/a/a/g;)V

    .line 230
    iget-object v0, p1, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    if-eqz v0, :cond_1

    .line 231
    const-string/jumbo v0, "previous_value"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 232
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaConfiguration$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TfaConfiguration$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 234
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->usedRescueCode:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 235
    const-string/jumbo v0, "used_rescue_code"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 236
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->usedRescueCode:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 238
    :cond_2
    if-nez p3, :cond_3

    .line 239
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 241
    :cond_3
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
    .line 220
    check-cast p1, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;Lcom/d/a/a/g;Z)V

    return-void
.end method
