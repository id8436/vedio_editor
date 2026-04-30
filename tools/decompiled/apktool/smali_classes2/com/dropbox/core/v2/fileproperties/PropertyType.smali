.class public final enum Lcom/dropbox/core/v2/fileproperties/PropertyType;
.super Ljava/lang/Enum;
.source "PropertyType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/fileproperties/PropertyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/fileproperties/PropertyType;

.field public static final enum OTHER:Lcom/dropbox/core/v2/fileproperties/PropertyType;

.field public static final enum STRING:Lcom/dropbox/core/v2/fileproperties/PropertyType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/PropertyType;

    const-string/jumbo v1, "STRING"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/fileproperties/PropertyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/PropertyType;->STRING:Lcom/dropbox/core/v2/fileproperties/PropertyType;

    .line 35
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/PropertyType;

    const-string/jumbo v1, "OTHER"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/fileproperties/PropertyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/PropertyType;->OTHER:Lcom/dropbox/core/v2/fileproperties/PropertyType;

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dropbox/core/v2/fileproperties/PropertyType;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/PropertyType;->STRING:Lcom/dropbox/core/v2/fileproperties/PropertyType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/PropertyType;->OTHER:Lcom/dropbox/core/v2/fileproperties/PropertyType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/PropertyType;->$VALUES:[Lcom/dropbox/core/v2/fileproperties/PropertyType;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/PropertyType;
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/dropbox/core/v2/fileproperties/PropertyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/fileproperties/PropertyType;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/fileproperties/PropertyType;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/PropertyType;->$VALUES:[Lcom/dropbox/core/v2/fileproperties/PropertyType;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/fileproperties/PropertyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/fileproperties/PropertyType;

    return-object v0
.end method
