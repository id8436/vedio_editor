.class final Lcom/google/gdata/data/contacts/Website$1;
.super Ljava/lang/Object;
.source "Website.java"

# interfaces
.implements Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue",
        "<",
        "Lcom/google/gdata/data/contacts/Website$Rel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttributeValue(Lcom/google/gdata/data/contacts/Website$Rel;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p1}, Lcom/google/gdata/data/contacts/Website$Rel;->toValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAttributeValue(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    check-cast p1, Lcom/google/gdata/data/contacts/Website$Rel;

    invoke-virtual {p0, p1}, Lcom/google/gdata/data/contacts/Website$1;->getAttributeValue(Lcom/google/gdata/data/contacts/Website$Rel;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
