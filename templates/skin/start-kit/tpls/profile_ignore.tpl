<section class="panel panel-default widget">
    <div class="panel panel-default widget">
        <div class="panel-body">
            {if E::IsAdmin()}
                <a href="#" onclick="forbidIgnoreUser({$oUserProfile->getId()}, this); return false;">{if $bForbidIgnore}{$aLang.plugin.ignore.allow_ignore_user}{else}{$aLang.plugin.ignore.forbid_ignore_user}{/if}</a><br/>
            {/if}
        
            {if !$bForbidIgnore}
                <a href="#" onclick="ignoreUser({$oUserProfile->getId()}, 'topics',this); return false;">{if $bIgnoredTopics}{$aLang.plugin.ignore.disignore_user_topics}{else}{$aLang.plugin.ignore.ignore_user_topics}{/if}</a><br/>
                <a href="#" onclick="ignoreUser({$oUserProfile->getId()}, 'comments',this); return false;">{if $bIgnoredComments}{$aLang.plugin.ignore.disignore_user_comments}{else}{$aLang.plugin.ignore.ignore_user_comments}{/if}</a><br/>
            {/if}
           
            <a href="#" onclick="ignoreTalkUser('{$oUserProfile->getLogin()}', {$oUserProfile->getId()},this); return false;">{if $bIgnoredTalks}{$aLang.plugin.ignore.disignore_user_talks}{else}{$aLang.plugin.ignore.ignore_user_talks}{/if}</a><br/>
        </div>
    </div>
</section>
