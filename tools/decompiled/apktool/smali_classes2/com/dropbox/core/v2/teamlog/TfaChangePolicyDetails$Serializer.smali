.class Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "TfaChangePolicyDetails.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    new-instance v0, Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 149
    .line 150
    if-nez p2, :cond_6

    .line 151
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 152
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v1

    .line 154
    :goto_0
    if-nez v1, :cond_5

    move-object v1, v0

    .line 157
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v2

    sget-object v3, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v2, v3, :cond_2

    .line 158
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v2

    .line 159
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 160
    const-string/jumbo v3, "new_value"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 161
    sget-object v1, Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy$Serializer;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy;

    move-result-object v1

    goto :goto_1

    .line 163
    :cond_0
    const-string/jumbo v3, "previous_value"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 164
    sget-object v0, Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy;

    goto :goto_1

    .line 167
    :cond_1
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails$Serializer;->skipValue(Lcom/d/a/a/k;)V

    goto :goto_1

    .line 170
    :cond_2
    if-nez v1, :cond_3

    .line 171
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"new_value\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_3
    new-instance v2, Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails;

    invoke-direct {v2, v1, v0}, Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails;-><init>(Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy;Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy;)V

    .line 178
    if-nez p2, :cond_4

    .line 179
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 181
    :cond_4
    return-object v2

    .line 176
    :cond_5
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

    :cond_6
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
    .line 127
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 132
    if-nez p3, :cond_0

    .line 133
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 135
    :cond_0
    const-string/jumbo v0, "new_value"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 136
    sget-object v0, Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails;->newValue:Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy$Serializer;->serialize(Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy;Lcom/d/a/a/g;)V

    .line 137
    iget-object v0, p1, Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails;->previousValue:Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy;

    if-eqz v0, :cond_1

    .line 138
    const-string/jumbo v0, "previous_value"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 139
    sget-object v0, Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails;->previousValue:Lcom/dropbox/core/v2/teampolicies/TwoStepVerificationPolicy;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 141
    :cond_1
    if-nez p3, :cond_2

    .line 142
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 144
    :cond_2
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
    .line 127
    check-cast p1, Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails;Lcom/d/a/a/g;Z)V

    return-void
.end method
