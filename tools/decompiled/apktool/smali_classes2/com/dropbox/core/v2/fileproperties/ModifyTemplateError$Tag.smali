.class public final enum Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;
.super Ljava/lang/Enum;
.source "ModifyTemplateError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

.field public static final enum CONFLICTING_PROPERTY_NAMES:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

.field public static final enum OTHER:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

.field public static final enum RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

.field public static final enum TEMPLATE_ATTRIBUTE_TOO_LARGE:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

.field public static final enum TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

.field public static final enum TOO_MANY_PROPERTIES:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

.field public static final enum TOO_MANY_TEMPLATES:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    const-string/jumbo v1, "TEMPLATE_NOT_FOUND"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    .line 39
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    const-string/jumbo v1, "RESTRICTED_CONTENT"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    .line 48
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    const-string/jumbo v1, "OTHER"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;->OTHER:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    .line 52
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    const-string/jumbo v1, "CONFLICTING_PROPERTY_NAMES"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;->CONFLICTING_PROPERTY_NAMES:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    .line 57
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    const-string/jumbo v1, "TOO_MANY_PROPERTIES"

    invoke-direct {v0, v1, v7}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;->TOO_MANY_PROPERTIES:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    .line 61
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    const-string/jumbo v1, "TOO_MANY_TEMPLATES"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;->TOO_MANY_TEMPLATES:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    .line 66
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    const-string/jumbo v1, "TEMPLATE_ATTRIBUTE_TOO_LARGE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;->TEMPLATE_ATTRIBUTE_TOO_LARGE:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    .line 31
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;->OTHER:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;->CONFLICTING_PROPERTY_NAMES:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;->TOO_MANY_PROPERTIES:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;->TOO_MANY_TEMPLATES:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;->TEMPLATE_ATTRIBUTE_TOO_LARGE:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;->$VALUES:[Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;->$VALUES:[Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    return-object v0
.end method
