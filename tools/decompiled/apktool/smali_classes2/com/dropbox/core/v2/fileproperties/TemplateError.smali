.class public final Lcom/dropbox/core/v2/fileproperties/TemplateError;
.super Ljava/lang/Object;
.source "TemplateError.java"


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/fileproperties/TemplateError;

.field public static final RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/TemplateError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

.field private templateNotFoundValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/TemplateError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/TemplateError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/TemplateError;->withTag(Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;)Lcom/dropbox/core/v2/fileproperties/TemplateError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/TemplateError;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/TemplateError;

    .line 66
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/TemplateError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/TemplateError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;->OTHER:Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/TemplateError;->withTag(Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;)Lcom/dropbox/core/v2/fileproperties/TemplateError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/TemplateError;->OTHER:Lcom/dropbox/core/v2/fileproperties/TemplateError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/fileproperties/TemplateError;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/TemplateError;->templateNotFoundValue:Ljava/lang/String;

    return-object v0
.end method

.method public static templateNotFound(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/TemplateError;
    .locals 2

    .prologue
    .line 149
    if-nez p0, :cond_0

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 153
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_1
    const-string/jumbo v0, "(/|ptid:).*"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_2
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/TemplateError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/TemplateError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/fileproperties/TemplateError;->withTagAndTemplateNotFound(Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/TemplateError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;)Lcom/dropbox/core/v2/fileproperties/TemplateError;
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/TemplateError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/TemplateError;-><init>()V

    .line 84
    iput-object p1, v0, Lcom/dropbox/core/v2/fileproperties/TemplateError;->_tag:Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

    .line 85
    return-object v0
.end method

.method private withTagAndTemplateNotFound(Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/TemplateError;
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/TemplateError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/TemplateError;-><init>()V

    .line 100
    iput-object p1, v0, Lcom/dropbox/core/v2/fileproperties/TemplateError;->_tag:Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

    .line 101
    iput-object p2, v0, Lcom/dropbox/core/v2/fileproperties/TemplateError;->templateNotFoundValue:Ljava/lang/String;

    .line 102
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 212
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 235
    :cond_0
    :goto_0
    return v0

    .line 215
    :cond_1
    if-eqz p1, :cond_0

    .line 218
    instance-of v2, p1, Lcom/dropbox/core/v2/fileproperties/TemplateError;

    if-eqz v2, :cond_0

    .line 219
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/TemplateError;

    .line 220
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/TemplateError;->_tag:Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/TemplateError;->_tag:Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

    if-ne v2, v3, :cond_0

    .line 223
    sget-object v2, Lcom/dropbox/core/v2/fileproperties/TemplateError$1;->$SwitchMap$com$dropbox$core$v2$fileproperties$TemplateError$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/TemplateError;->_tag:Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 225
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/TemplateError;->templateNotFoundValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/TemplateError;->templateNotFoundValue:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/TemplateError;->templateNotFoundValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/TemplateError;->templateNotFoundValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 227
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 229
    goto :goto_0

    .line 223
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getTemplateNotFoundValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/TemplateError;->_tag:Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

    if-eq v0, v1, :cond_0

    .line 174
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.TEMPLATE_NOT_FOUND, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/TemplateError;->_tag:Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/TemplateError;->templateNotFoundValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 203
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/TemplateError;->_tag:Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/TemplateError;->templateNotFoundValue:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 207
    return v0
.end method

.method public isOther()Z
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/TemplateError;->_tag:Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;->OTHER:Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRestrictedContent()Z
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/TemplateError;->_tag:Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTemplateNotFound()Z
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/TemplateError;->_tag:Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/TemplateError;->_tag:Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 241
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 253
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
