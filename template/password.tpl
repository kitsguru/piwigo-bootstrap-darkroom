<nav class="navbar navbar-default" role="navigation">
    <div class="container">
        <div class="navbar-header">
         <a href="/" title="Main Site"><i class="fa fa-home" aria-hidden="true"></i></a>
            <div class="navbar-brand"><a href="{$U_HOME}">{'Home'|@translate}</a>{$LEVEL_SEPARATOR}<a href>{$title}</a></div>
        </div>
    </div>
    <div class="navbar-right">
       <ul class="nav navbar-nav">
             {if !empty($PLUGIN_INDEX_ACTIONS)}{$PLUGIN_INDEX_ACTIONS}{/if}
       </ul>
    </div>
</nav>

{include file='infos_errors.tpl'}

{if $action ne 'none'}
<div class="container">
    <form id="lostPassword" action="{$form_action}?action={$action}{if isset($key)}&amp;key={$key}{/if}" method="post" class="form-horizontal">
        <div class="panel panel-primary">
            <div class="panel-heading">
                {'Forgot your password?'|@translate}
            </div>
            <div class="panel-body">
                <input type="hidden" name="pwg_token" value="{$PWG_TOKEN}">
{if $action eq 'lost'}
                <div>
                    {'Please enter your username or email address.'|@translate}
                    {'You will receive a link to create a new password via email.'|@translate}
                </div>
                <br />
                <div class="form-group">
                    <label for="username_or_email" class="col-sm-2 control-label">{'Username or email'|@translate}</label>
                    <div class="col-sm-4">
                        <input type="text" id="username_or_email" name="username_or_email" class="form-control" maxlength="40"{if isset($username_or_email)} value="{$username_or_email}"{/if} placeholder="{'Username or email'|@translate}">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <input type="submit" name="submit" value="{'Change my password'|@translate}" class="btn btn-default btn-primary">
                    </div>
                </div>
{elseif $action eq 'reset'}
                <div>{'Hello'|@translate} <em>{$username}</em>. {'Enter your new password below.'|@translate}</div>
                <br />
                <div class="form-group">
                    <label for="use_new_pwd" class="col-sm-2 control-label">{'New password'|@translate}</label>
                    <div class="col-sm-4">
                        <input type="password" name="use_new_pwd" id="use_new_pwd" value="" class="form-control" placeholder="{'New password'|@translate}">
                    </div>
                </div>
                <div class="form-group">
                    <label for="passwordConf" class="col-sm-2 control-label">{'Confirm Password'|@translate}</label>
                    <div class="col-sm-4">
                        <input type="password" name="passwordConf" id="passwordConf" class="form-control" value="" placeholder="{'Confirm Password'|@translate}">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <input type="submit" name="submit" value="{'Submit'|@translate}" class="btn btn-default btn-primary">
                    </div>
                </div>
{/if}
            </div>
        </div>
    </form>
</div>
{/if}

<script type="text/javascript">
{if $action eq 'lost'}
{literal}try{document.getElementById('username_or_email').focus();}catch(e){}{/literal}
{elseif $action eq 'reset'}
{literal}try{document.getElementById('use_new_pwd').focus();}catch(e){}{/literal}
{/if}
</script>
