package com.google.gdata.data.photos;

import com.google.gdata.data.Category;
import com.google.gdata.data.DateTime;
import com.google.gdata.data.Link;
import com.google.gdata.data.Person;
import com.google.gdata.data.TextConstruct;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public interface AtomData extends Extensible {
    List<Person> getAuthors();

    Set<Category> getCategories();

    List<Person> getContributors();

    TextConstruct getDescription();

    String getId();

    List<Link> getLinks();

    TextConstruct getRights();

    TextConstruct getTitle();

    DateTime getUpdated();

    void setDescription(TextConstruct textConstruct);

    void setId(String str);

    void setRights(TextConstruct textConstruct);

    void setTitle(TextConstruct textConstruct);

    void setUpdated(DateTime dateTime);
}
