.class public final Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;
.super Ljava/lang/Object;
.source "ModifyTemplateError.java"


# static fields
.field public static final CONFLICTING_PROPERTY_NAMES:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

.field public static final OTHER:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

.field public static final RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

.field public static final TEMPLATE_ATTRIBUTE_TOO_LARGE:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

.field public static final TOO_MANY_PROPERTIES:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

.field public static final TOO_MANY_TEMPLATES:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

.field private templateNotFoundValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->withTag(Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;)Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    .line 80
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;->OTHER:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->withTag(Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;)Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->OTHER:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    .line 84
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;->CONFLICTING_PROPERTY_NAMES:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->withTag(Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;)Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->CONFLICTING_PROPERTY_NAMES:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    .line 89
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;->TOO_MANY_PROPERTIES:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->withTag(Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;)Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->TOO_MANY_PROPERTIES:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    .line 93
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;->TOO_MANY_TEMPLATES:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->withTag(Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;)Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->TOO_MANY_TEMPLATES:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    .line 98
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;->TEMPLATE_ATTRIBUTE_TOO_LARGE:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->withTag(Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;)Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->TEMPLATE_ATTRIBUTE_TOO_LARGE:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->templateNotFoundValue:Ljava/lang/String;

    return-object v0
.end method

.method public static templateNotFound(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;
    .locals 2

    .prologue
    .line 178
    if-nez p0, :cond_0

    .line 179
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 182
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_1
    const-string/jumbo v0, "(/|ptid:).*"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_2
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->withTagAndTemplateNotFound(Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;)Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;-><init>()V

    .line 116
    iput-object p1, v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->_tag:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    .line 117
    return-object v0
.end method

.method private withTagAndTemplateNotFound(Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;
    .locals 1

    .prologue
    .line 131
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;-><init>()V

    .line 132
    iput-object p1, v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->_tag:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    .line 133
    iput-object p2, v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->templateNotFoundValue:Ljava/lang/String;

    .line 134
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 286
    if-ne p1, p0, :cond_0

    .line 317
    :goto_0
    :pswitch_0
    return v1

    .line 289
    :cond_0
    if-nez p1, :cond_1

    move v1, v0

    .line 290
    goto :goto_0

    .line 292
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    if-eqz v2, :cond_5

    .line 293
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    .line 294
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->_tag:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->_tag:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    if-eq v2, v3, :cond_2

    move v1, v0

    .line 295
    goto :goto_0

    .line 297
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$1;->$SwitchMap$com$dropbox$core$v2$fileproperties$ModifyTemplateError$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->_tag:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v1, v0

    .line 313
    goto :goto_0

    .line 299
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->templateNotFoundValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->templateNotFoundValue:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->templateNotFoundValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->templateNotFoundValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    move v1, v0

    goto :goto_0

    :cond_5
    move v1, v0

    .line 317
    goto :goto_0

    .line 297
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getTemplateNotFoundValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->_tag:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    if-eq v0, v1, :cond_0

    .line 203
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.TEMPLATE_NOT_FOUND, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->_tag:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->templateNotFoundValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 276
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->_tag:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->templateNotFoundValue:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 280
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 281
    return v0
.end method

.method public isConflictingPropertyNames()Z
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->_tag:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;->CONFLICTING_PROPERTY_NAMES:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOther()Z
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->_tag:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;->OTHER:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

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
    .line 216
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->_tag:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTemplateAttributeTooLarge()Z
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->_tag:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;->TEMPLATE_ATTRIBUTE_TOO_LARGE:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

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
    .line 160
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->_tag:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTooManyProperties()Z
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->_tag:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;->TOO_MANY_PROPERTIES:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTooManyTemplates()Z
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->_tag:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;->TOO_MANY_TEMPLATES:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->_tag:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 323
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 335
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
