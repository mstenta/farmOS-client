<template>
  <drawer-list>
    <router-link :to="{ name: 'logs' }">
      <drawer-list-item>My Logs</drawer-list-item>
    </router-link>
    <drawer-list-item @click="openNewLog">New Log</drawer-list-item>
  </drawer-list>
</template>

<script>
import DrawerList from '@/components/DrawerList';
import DrawerListItem from '@/components/DrawerListItem';

export default {
  components: {
    DrawerList,
    DrawerListItem,
  },
  methods: {
    openNewLog() {
      const timestamp = Math.floor(new Date() / 1000).toString();
      this.$store.dispatch('initializeLog', {
        type: { data: 'farm_activity', changed: timestamp },
        timestamp: { data: timestamp, changed: timestamp },
        modules: ['my-logs'],
      }).then(id => this.$router.push({ path: `/logs/${id}`}));
    },
  }
}
</script>

<style scoped>
  a, a:hover {
    text-decoration: none;
    color: inherit;
  }
</style>