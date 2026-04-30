.class public Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;
.super Ljava/lang/Object;
.source "UpdateTemplateArg.java"


# instance fields
.field protected addFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;",
            ">;"
        }
    .end annotation
.end field

.field protected description:Ljava/lang/String;

.field protected name:Ljava/lang/String;

.field protected final templateId:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    if-nez p1, :cond_0

    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'templateId\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 166
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'templateId\' is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_1
    const-string/jumbo v0, "(/|ptid:).*"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'templateId\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;->templateId:Ljava/lang/String;

    .line 172
    iput-object v2, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;->name:Ljava/lang/String;

    .line 173
    iput-object v2, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;->description:Ljava/lang/String;

    .line 174
    iput-object v2, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;->addFields:Ljava/util/List;

    .line 175
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;
    .locals 5

    .prologue
    .line 234
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;->templateId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;->description:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;->addFields:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public withAddFields(Ljava/util/List;)Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;",
            ">;)",
            "Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;"
        }
    .end annotation

    .prologue
    .line 216
    if-eqz p1, :cond_1

    .line 217
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;

    .line 218
    if-nez v0, :cond_0

    .line 219
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'addFields\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;->addFields:Ljava/util/List;

    .line 224
    return-object p0
.end method

.method public withDescription(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;->description:Ljava/lang/String;

    .line 200
    return-object p0
.end method

.method public withName(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;->name:Ljava/lang/String;

    .line 187
    return-object p0
.end method
