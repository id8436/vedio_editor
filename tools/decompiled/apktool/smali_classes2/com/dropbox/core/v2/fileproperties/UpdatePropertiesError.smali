.class public final Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;
.super Ljava/lang/Object;
.source "UpdatePropertiesError.java"


# static fields
.field public static final DOES_NOT_FIT_TEMPLATE:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

.field public static final OTHER:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

.field public static final PROPERTY_FIELD_TOO_LARGE:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

.field public static final RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

.field public static final UNSUPPORTED_FOLDER:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

.field private pathValue:Lcom/dropbox/core/v2/fileproperties/LookupError;

.field private propertyGroupLookupValue:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

.field private templateNotFoundValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->withTag(Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;)Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    .line 78
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;->OTHER:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->withTag(Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;)Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->OTHER:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    .line 83
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;->UNSUPPORTED_FOLDER:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->withTag(Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;)Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->UNSUPPORTED_FOLDER:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    .line 87
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;->PROPERTY_FIELD_TOO_LARGE:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->withTag(Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;)Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->PROPERTY_FIELD_TOO_LARGE:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    .line 92
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;->DOES_NOT_FIT_TEMPLATE:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->withTag(Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;)Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->DOES_NOT_FIT_TEMPLATE:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->templateNotFoundValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;)Lcom/dropbox/core/v2/fileproperties/LookupError;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->pathValue:Lcom/dropbox/core/v2/fileproperties/LookupError;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;)Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->propertyGroupLookupValue:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    return-object v0
.end method

.method public static path(Lcom/dropbox/core/v2/fileproperties/LookupError;)Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;
    .locals 2

    .prologue
    .line 281
    if-nez p0, :cond_0

    .line 282
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;->PATH:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->withTagAndPath(Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;Lcom/dropbox/core/v2/fileproperties/LookupError;)Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    move-result-object v0

    return-object v0
.end method

.method public static propertyGroupLookup(Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;)Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;
    .locals 2

    .prologue
    .line 360
    if-nez p0, :cond_0

    .line 361
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;->PROPERTY_GROUP_LOOKUP:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->withTagAndPropertyGroupLookup(Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;)Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    move-result-object v0

    return-object v0
.end method

.method public static templateNotFound(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;
    .locals 2

    .prologue
    .line 204
    if-nez p0, :cond_0

    .line 205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_1
    const-string/jumbo v0, "(/|ptid:).*"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_2
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->withTagAndTemplateNotFound(Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;)Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;
    .locals 1

    .prologue
    .line 111
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;-><init>()V

    .line 112
    iput-object p1, v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    .line 113
    return-object v0
.end method

.method private withTagAndPath(Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;Lcom/dropbox/core/v2/fileproperties/LookupError;)Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;-><init>()V

    .line 143
    iput-object p1, v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    .line 144
    iput-object p2, v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->pathValue:Lcom/dropbox/core/v2/fileproperties/LookupError;

    .line 145
    return-object v0
.end method

.method private withTagAndPropertyGroupLookup(Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;)Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;
    .locals 1

    .prologue
    .line 157
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;-><init>()V

    .line 158
    iput-object p1, v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    .line 159
    iput-object p2, v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->propertyGroupLookupValue:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    .line 160
    return-object v0
.end method

.method private withTagAndTemplateNotFound(Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;-><init>()V

    .line 128
    iput-object p1, v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    .line 129
    iput-object p2, v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->templateNotFoundValue:Ljava/lang/String;

    .line 130
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 396
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 429
    :cond_0
    :goto_0
    return v0

    .line 399
    :cond_1
    if-eqz p1, :cond_0

    .line 402
    instance-of v2, p1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    if-eqz v2, :cond_0

    .line 403
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    .line 404
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    if-ne v2, v3, :cond_0

    .line 407
    sget-object v2, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$1;->$SwitchMap$com$dropbox$core$v2$fileproperties$UpdatePropertiesError$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 409
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->templateNotFoundValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->templateNotFoundValue:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->templateNotFoundValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->templateNotFoundValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 411
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 413
    goto :goto_0

    .line 415
    :pswitch_3
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->pathValue:Lcom/dropbox/core/v2/fileproperties/LookupError;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->pathValue:Lcom/dropbox/core/v2/fileproperties/LookupError;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->pathValue:Lcom/dropbox/core/v2/fileproperties/LookupError;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->pathValue:Lcom/dropbox/core/v2/fileproperties/LookupError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/fileproperties/LookupError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 417
    goto :goto_0

    :pswitch_5
    move v0, v1

    .line 419
    goto :goto_0

    :pswitch_6
    move v0, v1

    .line 421
    goto :goto_0

    .line 423
    :pswitch_7
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->propertyGroupLookupValue:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->propertyGroupLookupValue:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->propertyGroupLookupValue:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->propertyGroupLookupValue:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 407
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
    .end packed-switch
.end method

.method public getPathValue()Lcom/dropbox/core/v2/fileproperties/LookupError;
    .locals 3

    .prologue
    .line 296
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;->PATH:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    if-eq v0, v1, :cond_0

    .line 297
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.PATH, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->pathValue:Lcom/dropbox/core/v2/fileproperties/LookupError;

    return-object v0
.end method

.method public getPropertyGroupLookupValue()Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;
    .locals 3

    .prologue
    .line 376
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;->PROPERTY_GROUP_LOOKUP:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    if-eq v0, v1, :cond_0

    .line 377
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.PROPERTY_GROUP_LOOKUP, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->propertyGroupLookupValue:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    return-object v0
.end method

.method public getTemplateNotFoundValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    if-eq v0, v1, :cond_0

    .line 229
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.TEMPLATE_NOT_FOUND, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->templateNotFoundValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 384
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->templateNotFoundValue:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->pathValue:Lcom/dropbox/core/v2/fileproperties/LookupError;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->propertyGroupLookupValue:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 390
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 391
    return v0
.end method

.method public isDoesNotFitTemplate()Z
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;->DOES_NOT_FIT_TEMPLATE:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

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
    .line 253
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;->OTHER:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPath()Z
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;->PATH:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPropertyFieldTooLarge()Z
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;->PROPERTY_FIELD_TOO_LARGE:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPropertyGroupLookup()Z
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;->PROPERTY_GROUP_LOOKUP:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

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
    .line 242
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

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
    .line 186
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnsupportedFolder()Z
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;->UNSUPPORTED_FOLDER:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->_tag:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 435
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 447
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
